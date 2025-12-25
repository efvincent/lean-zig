# Contributing to lean-zig

Thank you for your interest in contributing to `lean-zig`! We want this library to be a high-quality example of Lean/Zig interoperability.

## Development Workflow

1.  **Fork and Clone**: Fork the repository and clone it locally.
2.  **Branch**: Create a feature branch for your changes (`git checkout -b my-feature`).
3.  **Implement**: Write your code and tests.
4.  **Format**:
    - Lean: Run `lake run lint` (if configured) or ensure your editor formats on save.
    - Zig: Run `zig fmt Zig/lean.zig`.
5.  **Test**: Run `lake script run test` to ensure everything works.
6.  **Pull Request**: Submit a PR with a clear description of your changes.

## Code Style

- **Lean**: Follow standard Lean 4 naming conventions (CamelCase for types, camelCase for definitions).
- **Zig**: Follow standard Zig style guide.

## License

By contributing, you agree that your contributions will be licensed under the project's license (MIT).
