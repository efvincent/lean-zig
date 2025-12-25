import Lake
open Lake DSL
open System (FilePath)

package «lean-zig» where
  version := v!"0.1.0"
  description := "Zig bindings for the Lean 4 runtime"
  keywords := #["zig", "ffi", "low-level"]

@[default_target]
lean_lib «LeanZig» where
  -- No Lean code yet, but required for package structure

target lean_zig_lib pkg : FilePath := do
  -- Export the path to the Zig source file
  return Job.pure (pkg.dir / "Zig" / "lean.zig")

script test do
  let zigCmd := "zig"
  let args := #["test", "Zig/lean.zig"]
  let child ← IO.Process.spawn {
    cmd := zigCmd
    args := args
  }
  child.wait
