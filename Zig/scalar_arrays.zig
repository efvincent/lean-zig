//! Scalar array operations for Lean ByteArray, FloatArray, etc.
//!
//! Scalar arrays store homogeneous primitive values without indirection.
//! All accessor functions are inline for zero-cost abstractions.

const types = @import("types.zig");

pub const ScalarArrayObject = types.ScalarArrayObject;
pub const obj_arg = types.obj_arg;
pub const b_obj_arg = types.b_obj_arg;
pub const obj_res = types.obj_res;

// ============================================================================
// Scalar Array Accessors (Hot Path - All Inlined)
// ============================================================================

/// Get the number of elements in a scalar array.
///
/// ## Precondition
/// Input must be a valid, non-null scalar array object.
pub inline fn sArraySize(o: b_obj_arg) usize {
    const obj = o orelse unreachable;
    const arr: *ScalarArrayObject = @ptrCast(@alignCast(obj));
    return arr.m_size;
}

/// Get the capacity (maximum elements).
pub inline fn sArrayCapacity(o: b_obj_arg) usize {
    const obj = o orelse unreachable;
    const arr: *ScalarArrayObject = @ptrCast(@alignCast(obj));
    return arr.m_capacity;
}

/// Get the element size in bytes.
///
/// ## Returns
/// - ByteArray (u8): 1
/// - Float32Array (f32): 4
/// - Float64Array (f64): 8
pub inline fn sArrayElemSize(o: b_obj_arg) usize {
    const obj = o orelse unreachable;
    const arr: *ScalarArrayObject = @ptrCast(@alignCast(obj));
    return arr.m_elem_size;
}

/// Get a pointer to the raw data.
///
/// Returns pointer to the byte buffer containing array elements.
/// Caller must cast to appropriate type based on element size.
///
/// ## Example
/// ```zig
/// const byte_arr = get_byte_array();
/// const data = sArrayCptr(byte_arr);
/// const size = sArraySize(byte_arr);
/// const bytes: [*]u8 = @ptrCast(data);
/// for (bytes[0..size]) |byte| {
///     // Process byte...
/// }
/// ```
pub inline fn sArrayCptr(o: b_obj_arg) [*]u8 {
    const obj = o orelse unreachable;
    const base: [*]u8 = @ptrCast(@alignCast(obj));
    return base + @sizeOf(ScalarArrayObject);
}

/// Directly modify the size field.
///
/// ## UNSAFE
/// Bypasses Lean's safety guarantees. Caller must ensure:
/// 1. new_size <= capacity
/// 2. If increasing size, new elements are properly initialized
/// 3. If decreasing size, caller handles cleanup if needed
///
/// Violating these requirements causes undefined behavior.
pub inline fn sArraySetSize(o: obj_res, new_size: usize) void {
    const obj = o orelse unreachable;
    const arr: *ScalarArrayObject = @ptrCast(@alignCast(obj));
    arr.m_size = new_size;
}
