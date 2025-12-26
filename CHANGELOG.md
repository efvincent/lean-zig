# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.2.0] - 2025-12-26

### Added
- Comprehensive documentation suite (api.md, usage.md, design.md)
- Complete test suite in `Zig/lean_test.zig`
- Lake integration with zig build support
- Versioning strategy documentation
- CHANGELOG to track version history
- Ecosystem integration preparation (Reservoir registry)

### Changed
- Refined lakefile.lean structure and metadata
- Enhanced README with architecture overview
- Improved documentation organization

### Fixed
- Lake manifest handling (excluded from version control per library best practices)

## [0.1.0] - Initial Development

### Added
- Hybrid JIT binding strategy (auto-generated + manually inlined hot paths)
- Complete Zig FFI bindings for Lean 4 runtime
- Core API coverage:
  - Boxing/unboxing for all scalar types
  - Constructors with scalar field accessors
  - String operations and UTF-8 support
  - Object arrays with fast unchecked access
  - Scalar arrays (ByteArray, FloatArray)
  - Closures and thunks
  - Tasks and async support
  - References for ST monad
  - Type inspection utilities
  - IO result handling
- Zero-overhead tagged pointer optimization
- Reference counting with exclusive/shared detection
- Build system integration via `build.zig`
- MIT license

[Unreleased]: https://github.com/efvincent/lean-zig/compare/v0.2.0...HEAD
[0.2.0]: https://github.com/efvincent/lean-zig/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/efvincent/lean-zig/releases/tag/v0.1.0
