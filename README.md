# Lean-Zig Interop

A library providing Zig bindings for the Lean 4 runtime, enabling seamless interoperability between Lean and Zig without C shims.

## Features

- **Pure Zig**: No C shim required.
- **Type Safety**: Null checks and typed pointers (`obj_arg`, `obj_res`).
- **Memory Management**: Uses Lean's runtime allocator directly.
- **Build Integration**: Easy integration with Lake.

## Usage

Add this package to your `lakefile.lean`:

```lean
require «lean-zig» from git
  "https://github.com/yourusername/lean-zig" @ "main"
```

Then use the Zig module in your build configuration:

```lean
target zigLib (pkg : Package) : FilePath := Job.async do
  -- 1. Find the dependency
  let leanZig := pkg.deps.find? fun dep => dep.name.toString == "lean-zig"
  let leanZig := leanZig.get!
  let leanZigSrc := leanZig.dir / "Zig" / "lean.zig"
  
  -- 2. Pass it to Zig
  proc {
    cmd := "zig"
    args := #[
      "build-lib",
      "your_file.zig",
      "-Mlean=" ++ leanZigSrc.toString,
      ...
    ]
    ...
  }
```

## Development

To run the unit tests:

```bash
lake script run test
```
