# API Reference

The `lean` module in Zig exposes types and functions that mirror the Lean C API.

## Types

### Object References

*   **`lean_object`**: The opaque struct representing a Lean object header.
*   **`lean_obj_arg`**: An owned pointer to a `lean_object`. Passing this transfers ownership.
*   **`b_lean_obj_arg`**: A borrowed pointer to a `lean_object`. Passing this *does not* transfer ownership.
*   **`lean_obj_res`**: A pointer to a `lean_object` returned as a result. Transfers ownership to the caller.

### Primitive Types

*   **`usize`**: Used for `USize` in Lean.
*   **`u64`**: Used for `UInt64` in Lean.
*   **`u32`**: Used for `UInt32` in Lean.
*   **`u8`**: Used for `UInt8` in Lean.
*   **`f64`**: Used for `Float` in Lean.

## Functions

### Reference Counting

*   `lean_inc(o: lean_obj_arg) void`: Increments the reference count.
*   `lean_dec(o: lean_obj_arg) void`: Decrements the reference count. Frees the object if count reaches 0.

### Strings

*   `lean_mk_string(s: [*c]const u8) lean_obj_res`: Creates a Lean string from a null-terminated C string.
*   `lean_string_cstr(s: b_lean_obj_arg) [*c]const u8`: Returns a pointer to the C string data inside a Lean string.

### Constructors

*   `lean_box(i: usize) lean_obj_res`: Creates a scalar (unboxed) value (e.g., for small Nats or constructors with no fields).
*   `lean_unbox(o: b_lean_obj_arg) usize`: Extracts the scalar value from a boxed object.

### IO

*   `lean_io_result_mk_ok(a: lean_obj_arg) lean_obj_res`: Wraps a value in an `IO.ok` result.
*   `lean_io_result_mk_error(e: lean_obj_arg) lean_obj_res`: Wraps a value in an `IO.error` result.

*(Note: This is a subset of the available API. See `Zig/lean.zig` for the full list of exported definitions.)*
