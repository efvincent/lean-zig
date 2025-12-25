# Usage Guide

This guide details how to integrate `lean-zig` into your Lean 4 project.

## 1. Add Dependency

Add `lean-zig` to your `lakefile.lean`.

```lean
require «lean-zig» from git
  "https://github.com/YOUR_USERNAME/lean-zig" @ "main"
```

## 2. Configure the Build Target

You need to tell Lake how to compile your Zig code and link it with the `lean-zig` bindings.

In your `lakefile.lean`, define a target that builds your Zig library.

```lean
target zigLib pkg : FilePath := do
  -- 1. Locate the lean-zig package
  let ws ← getWorkspace
  let some leanZig := ws.findPackage? "lean-zig"
    | error "lean-zig not found"
  
  -- 2. Get the path to lean.zig
  let leanZigSrc := leanZig.dir / "Zig" / "lean.zig"

  -- 3. Define your source files
  let srcFile := pkg.dir / "zig" / "your_code.zig"
  let libFile := pkg.dir / "build" / "libyour_code.a"

  -- 4. Build using the Zig compiler
  Job.async do
    proc {
      cmd := "zig"
      args := #[
        "build-lib",
        "--dep", "lean",                -- Declare dependency name
        "-Mroot=" ++ srcFile.toString,  -- Your root file
        "-Mlean=" ++ leanZigSrc.toString, -- Map 'lean' import to lean.zig
        "-O", "ReleaseFast",            -- Optimization level
        "-femit-bin=" ++ libFile.toString,
        "-fno-emit-h",
        "-fPIC"                         -- Position Independent Code is crucial for shared libs
      ]
      cwd := pkg.dir
    }
    return libFile
```

## 3. Link the Library

Define an `extern_lib` that consumes the target you just created.

```lean
extern_lib libyour_code pkg := do
  fetch (pkg.target ``zigLib)
```

## 4. Writing Zig Code

In your Zig file (`zig/your_code.zig`), import the `lean` module:

```zig
const lean = @import("lean");

export fn my_lean_function(arg: lean.lean_obj_arg) lean.lean_obj_res {
    // ... implementation ...
    return arg;
}
```

## 5. Writing Lean Code

Declare the function with `@[extern]`:

```lean
@[extern "my_lean_function"]
opaque myFunction (s : String) : String
```

## Troubleshooting

*   **"lean-zig not found"**: Ensure you have run `lake update`.
*   **Linker errors**: Make sure you are using `-fPIC` in your Zig build command.
*   **Runtime crashes**: Check your reference counting. If you take an owned argument (`lean_obj_arg`), you must either return it, free it, or pass it to something that takes ownership.
