# Usage Guide

Comprehensive guide for integrating `lean-zig` into your Lean 4 project.

## Quick Start

### 1. Add Dependency

```lean
require «lean-zig» from git
  "https://github.com/efvincent/lean-zig" @ "main"
```

### 2. Automatic Binding Generation

The library uses `build.zig` which automatically:
- Detects your Lean installation via `lean --print-prefix`
- Generates FFI bindings from `lean.h` using `translateC`
- Links against Lean runtime

**No manual configuration needed.** Bindings always match your installed Lean version.

### 3. Use in Your Zig Code

```zig
const lean = @import("lean");

export fn my_function(obj: lean.obj_arg) lean.obj_res {
    defer lean.lean_dec_ref(obj);
    // ... use lean.* functions ...
}
```

## Build Integration

### Option A: Invoke via Lake

```lean
target zigBuild pkg : Unit := do
  let ws ← getWorkspace
  let some leanZig := ws.findPackage? "lean-zig"
    | error "lean-zig not found"
  
  Job.async do
    let out ← IO.Process.output {
      cmd := "zig"
      args := #["build", "test"]
      cwd := leanZig.dir
    }
    if out.exitCode != 0 then
      error "zig build failed"
```

### Option B: Depend on lean-zig Module

In your `build.zig.zon`:

```zig
.dependencies = .{
    .@"lean-zig" = .{
        .url = "https://github.com/efvincent/lean-zig/archive/main.tar.gz",
        // Add actual hash
    },
},
```

Then in your `build.zig`:

```zig
const lean_zig = b.dependency("lean-zig", .{
    .target = target,
    .optimize = optimize,
});

const lean_module = lean_zig.module("lean-zig");
your_lib.root_module.addImport("lean", lean_module);
```

## Performance Considerations

### Hot-Path Functions (Inlined)

These compile to **1-5 CPU instructions**:

- `boxUsize` / `unboxUsize` - 1 shift + 1 bitwise op
- `lean_inc_ref` / `lean_dec_ref` - 1 compare + 1 increment  
- `objectTag`, `objectRc` - 1 pointer cast + 1 load
- `arrayUget`, `arrayGet` - pointer arithmetic + load
- `ctorGet`, `ctorSet` - pointer arithmetic + load/store
- `stringCstr`, `stringSize` - pointer arithmetic + load

### Cold-Path Functions (Forwarded)

These call into Lean runtime (still fast):

- `allocCtor`, `allocArray` - heap allocation
- `lean_mk_string` - string creation
- `lean_dec_ref_cold` - object finalization (MT-safe)

### Performance Guidelines

1. **Use unchecked access in hot loops**: `arrayUget` over `arrayGet`
2. **Leverage tagged pointers**: Small integers (<2^63) have zero overhead
3. **Check exclusivity**: `isExclusive` enables in-place mutation
4. **Batch refcounts**: Group operations before inc/dec calls
5. **Profile first**: Use `std.time.Timer` to measure critical paths

Expected performance on modern x86_64:
- Boxing/unboxing: **1-2ns** per round-trip
- Refcount fast path: **0.5ns** per operation
- Array element access: **2-3ns**
- Field access: **1-2ns**

## Common Patterns

### Pattern 1: Ownership Transfer

```zig
export fn process(obj: lean.obj_arg) lean.obj_res {
    defer lean.lean_dec_ref(obj);  // Takes ownership, must clean up
    // ... use obj ...
    return lean.ioResultMkOk(result);
}
```

### Pattern 2: Borrowing

```zig
export fn inspect(obj: lean.b_obj_arg) lean.obj_res {
    // Borrows - no dec_ref!
    const tag = lean.objectTag(obj);
    return lean.ioResultMkOk(lean.boxUsize(@intCast(tag)));
}
```

### Pattern 3: Sharing References

```zig
export fn duplicate(obj: lean.obj_arg) lean.obj_res {
    lean.lean_inc_ref(obj);  // Need two references
    
    const pair = lean.allocCtor(0, 2, 0) orelse {
        lean.lean_dec_ref(obj);
        return lean.ioResultMkError(lean.lean_mk_string("alloc failed"));
    };
    
    lean.ctorSet(pair, 0, obj);
    lean.ctorSet(pair, 1, obj);  // Both fields share the object
    return lean.ioResultMkOk(pair);
}
```

### Pattern 4: In-Place Mutation

```zig
export fn mutate(arr: lean.obj_arg, idx: usize, val: lean.obj_arg) lean.obj_res {
    if (lean.isExclusive(arr)) {
        // Exclusive access - mutate in place (fast path)
        const old = lean.arrayUget(arr, idx);
        lean.lean_dec_ref(old);
        lean.arraySet(arr, idx, val);
        return lean.ioResultMkOk(arr);
    } else {
        // Shared - must copy (slow path)
        const new_arr = lean.arrayCopy(arr);
        lean.lean_dec_ref(arr);
        lean.arraySet(new_arr, idx, val);
        return lean.ioResultMkOk(new_arr);
    }
}
```

## Complete End-to-End Example

This example demonstrates the full workflow: Lean code calling Zig, passing data both directions.

### Step 1: Define Lean Interface

In your Lean project, create `lib/ZigFFI.lean`:

```lean
-- FFI declaration for Zig function
@[extern "zig_process_numbers"]
opaque zigProcessNumbers (arr : Array Nat) : IO (Array Nat)

-- Lean wrapper with type safety
def processWithZig (numbers : Array Nat) : IO (Array Nat) := do
  if numbers.isEmpty then
    return #[]
  zigProcessNumbers numbers
```

### Step 2: Implement in Zig

Create `zig/process.zig`:

```zig
const lean = @import("lean");
const std = @import("std");

/// Takes array of Lean Nat (boxed usize), doubles each element
export fn zig_process_numbers(arr: lean.obj_arg, world: lean.obj_arg) lean.obj_res {
    _ = world;  // IO world token (unused)
    defer lean.lean_dec_ref(arr);
    
    const size = lean.arraySize(arr);
    const result = lean.allocArray(size) orelse {
        const err = lean.lean_mk_string("allocation failed");
        return lean.ioResultMkError(err);
    };
    
    var i: usize = 0;
    while (i < size) : (i += 1) {
        const elem = lean.arrayUget(arr, i);
        
        // Check if it's a tagged pointer (small nat)
        if (lean.isScalar(elem)) {
            const val = lean.unboxUsize(elem);
            const doubled = lean.boxUsize(val * 2);
            lean.arraySet(result, i, doubled);
        } else {
            // Large Nat - just pass through
            lean.lean_inc_ref(elem);
            lean.arraySet(result, i, elem);
        }
    }
    
    return lean.ioResultMkOk(result);
}
```

### Step 3: Configure Build

Update your `lakefile.lean`:

```lean
require «lean-zig» from git
  "https://github.com/efvincent/lean-zig" @ "main"

@[default_target]
lean_lib «MyLib» where
  roots := #[`ZigFFI]

extern_lib libleanzig where
  name := "leanzig"
  srcDir := "zig"
  -- Link against Lean runtime
  moreLinkArgs := #["-lleanrt", "-lleanshared"]
```

Add to your `build.zig`:

```zig
const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    
    // Import lean-zig bindings
    const lean_zig_dep = b.dependency("lean-zig", .{
        .target = target,
        .optimize = optimize,
    });
    const lean_module = lean_zig_dep.module("lean-zig");
    
    // Build your FFI library
    const lib = b.addStaticLibrary(.{
        .name = "leanzig",
        .root_source_file = .{ .path = "zig/process.zig" },
        .target = target,
        .optimize = optimize,
    });
    
    lib.root_module.addImport("lean", lean_module);
    lib.linkLibC();
    b.installArtifact(lib);
}
```

### Step 4: Use in Lean

In `Main.lean`:

```lean
import MyLib.ZigFFI

def main : IO Unit := do
  let numbers := #[1, 2, 3, 4, 5]
  IO.println s!"Input: {numbers}"
  
  let doubled ← processWithZig numbers
  IO.println s!"Output: {doubled}"
  -- Expected: Output: #[2, 4, 6, 8, 10]
```

### Step 5: Build and Run

```bash
lake build
lake exe my_project
# Input: #[1, 2, 3, 4, 5]
# Output: #[2, 4, 6, 8, 10]
```

This example demonstrates:
- ✅ Passing arrays between Lean and Zig
- ✅ Proper reference counting with `defer`
- ✅ Boxing/unboxing scalar values
- ✅ Error handling with IO results
- ✅ Build system integration

---

## Examples

### String Processing

```zig
const lean = @import("lean");

export fn reverse_string(str: lean.obj_arg, world: lean.obj_arg) lean.obj_res {
    _ = world;
    defer lean.lean_dec_ref(str);
    
    const cstr = lean.stringCstr(str);
    const len = lean.stringSize(str) - 1;
    
    var buffer: [256]u8 = undefined;
    if (len > 256) {
        return lean.ioResultMkError(lean.lean_mk_string("string too long"));
    }
    
    var i: usize = 0;
    while (i < len) : (i += 1) {
        buffer[len - 1 - i] = cstr[i];
    }
    
    const result = lean.lean_mk_string_from_bytes(&buffer, len);
    return lean.ioResultMkOk(result);
}
```

### Array Operations

```zig
export fn sum_array(arr: lean.obj_arg, world: lean.obj_arg) lean.obj_res {
    _ = world;
    defer lean.lean_dec_ref(arr);
    
    const size = lean.arraySize(arr);
    var sum: usize = 0;
    
    var i: usize = 0;
    while (i < size) : (i += 1) {
        const elem = lean.arrayUget(arr, i);  // Unchecked for speed
        // Check if tagged pointer (bit 0 set)
        if (@intFromPtr(elem) & 1 == 1) {
            sum += lean.unboxUsize(elem);
        }
    }
    
    return lean.ioResultMkOk(lean.boxUsize(sum));
}
```

## Troubleshooting

### Bindings Don't Match Lean Version

Clean and rebuild:
```bash
rm -rf .zig-cache zig-out
lake clean && lake build
```

### Segfault in Reference Counting

**Checklist:**
1. Don't `dec_ref` borrowed objects (`b_obj_arg`)
2. Don't forget to `inc_ref` when sharing
3. Don't use after `dec_ref`

**Debug:**
```bash
LEAN_DEBUG_RC=1 ./your_program
```

### Memory Leak

**Checklist:**
1. Every `obj_arg` must be `dec_ref`'d exactly once
2. Every `inc_ref` must have matching `dec_ref`
3. Every allocation must eventually be freed

**Debug:**
```bash
LEAN_CHECK_LEAKS=1 ./your_program
```

### Build Fails to Find Lean

Ensure `lean` is in PATH:
```bash
which lean
lean --print-prefix
```

## Version Synchronization

**The bindings always match your installed Lean version.** When you upgrade Lean:

```bash
elan update
lake build  # Automatically regenerates bindings
```

No manual updates to lean-zig needed!

## See Also

- **[API Reference](api.md)**: Complete function documentation
- **[Design](design.md)**: Architecture and implementation details
- **[Contributing](../CONTRIBUTING.md)**: Maintainer guide for handling Lean updates
