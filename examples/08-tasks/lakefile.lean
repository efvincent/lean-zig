import Lake
open Lake DSL

package «tasks-demo» where
  version := v!"0.1.0"

require «lean-zig» from ".." / ".."

@[default_target]
lean_exe «tasks-demo» where
  root := `Main
  -- Link against copy_file_range shim for glibc compatibility
  moreLinkArgs := #["-L../../", "-lcopy_file_range", "-Wl,-rpath,../../"]

extern_lib libleanzig pkg := do
  proc {
    cmd := "zig"
    args := #["build"]
    cwd := pkg.dir
  }

  let name := nameToStaticLib "leanzig"
  let srcPath := pkg.dir / "zig-out" / "lib" / name
  let libDir := pkg.dir / ".lake" / "build" / "lib"
  IO.FS.createDirAll libDir
  let tgtPath := libDir / name
  IO.FS.writeBinFile tgtPath (← IO.FS.readBinFile srcPath)
  return (pure tgtPath)
