# Design Philosophy

`lean-zig` is built on a few core principles designed to make Lean/Zig interoperability seamless, safe, and efficient.

## 1. Pure Zig (No C Shim)

The most significant design choice is the complete elimination of C glue code.

*   **Traditional Approach**: Lean FFI usually involves writing a C header/source file that includes `<lean/lean.h>`, exports `extern "C"` functions, and then calls into the target language.
*   **Our Approach**: We reimplement the necessary parts of the Lean runtime ABI directly in Zig.

**Why?**
*   **Build Simplicity**: You don't need a C compiler in your build chain (other than what Zig provides).
*   **Performance**: Cross-language inlining becomes possible (in theory), and we avoid the overhead of an extra function call layer.
*   **Ergonomics**: You write Zig, you write Lean. You don't context-switch to C.

## 2. Type Safety & Nullability

Lean's C API uses `lean_object*` for almost everything. In C, this is just a pointer, and it's easy to forget which pointers are nullable (options) and which are not.

`lean-zig` leverages Zig's type system:
*   **`lean_obj_arg`**: Represents a standard, owned Lean object. In Zig, this maps to `*lean_object`.
*   **`?*lean_object`**: Used explicitly where Lean might pass a null pointer (though Lean's runtime rarely uses actual C NULLs for logic, preferring boxed types, we respect the ABI).

## 3. Memory Management (The "Borrow" vs "Own" Distinction)

Lean uses reference counting. The FFI has strict rules about who owns a reference.

*   **`@& T` (Borrowed)**: In Lean, this means the caller keeps ownership. In `lean-zig`, we map this to `b_lean_obj_arg`. The Zig code *must not* decrement the reference count of this object unless it explicitly incremented it first (retained it).
*   **`T` (Owned)**: In Lean, this means ownership is transferred to the callee. In `lean-zig`, this maps to `lean_obj_arg`. The Zig code *must* ensure the reference count is decremented eventually (usually by consuming it or passing it to another function).

## 4. Direct Allocator Integration

Lean has its own memory allocator (`lean_alloc`, `lean_inc_ref`, etc.). `lean-zig` binds directly to these symbols.

*   **Benefit**: Objects allocated in Zig using these bindings are indistinguishable from objects allocated by Lean. They live on the same heap and participate in the same reference counting cycles.

## 5. Lake Integration

We designed the library to be consumed via Lake, Lean's build system. By exposing the `lean.zig` file path via a Lake target, downstream projects can easily include it in their `zig build-lib` commands without hardcoding paths.
