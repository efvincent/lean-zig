# Lean-Zig Interop

A library providing Zig bindings for the Lean 4 runtime, enabling seamless interoperability between Lean and Zig without C shims.

## Documentation

*   [**Usage Guide**](doc/usage.md): How to install and configure `lean-zig` in your project.
*   [**Design Philosophy**](doc/design.md): Why we chose pure Zig, and how it maps to Lean's memory model.
*   [**API Reference**](doc/api.md): Overview of the available types and functions.

## Features

- **Pure Zig**: No C shim required.
- **Type Safety**: Null checks and typed pointers (`obj_arg`, `obj_res`).
- **Memory Management**: Uses Lean's runtime allocator directly.
- **Build Integration**: Easy integration with Lake.

## Quick Start

Add this package to your `lakefile.lean`:

```lean
require «lean-zig» from git
  "https://github.com/yourusername/lean-zig" @ "main"
```

See the [Usage Guide](doc/usage.md) for full build configuration instructions.

## Development

To run the unit tests:

```bash
lake script run test
```
