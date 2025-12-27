//! String operations for Lean UTF-8 strings.
//!
//! Lean strings are null-terminated UTF-8 with cached length information.
//! All accessor functions are inline for zero-cost abstractions.

const types = @import("types.zig");
const lean_raw = @import("lean_raw");

pub const StringObject = types.StringObject;
pub const obj_arg = types.obj_arg;
pub const b_obj_arg = types.b_obj_arg;
pub const obj_res = types.obj_res;

// External Lean runtime functions
pub const lean_mk_string = lean_raw.lean_mk_string;
pub const lean_mk_string_from_bytes = lean_raw.lean_mk_string_from_bytes;

// ============================================================================
// String Accessors (Hot Path - Inlined)
// ============================================================================

/// Get a pointer to the raw UTF-8 bytes.
///
/// The returned pointer points to null-terminated string data.
///
/// ## Precondition
/// Input must be a valid, non-null Lean string object.
///
/// ## Example
/// ```zig
/// const cstr = stringCstr(lean_string);
/// const len = stringSize(lean_string) - 1;  // exclude null
/// const slice = cstr[0..len];
/// ```
pub fn stringCstr(o: b_obj_arg) [*]const u8 {
    const obj = o orelse unreachable;
    const strObj: *StringObject = @ptrCast(@alignCast(obj));
    const base: [*]const u8 = @ptrCast(strObj);
    return base + @sizeOf(StringObject);
}

/// Get the byte size, including null terminator.
///
/// To get content length, subtract 1 from this value.
pub fn stringSize(o: b_obj_arg) usize {
    const obj = o orelse unreachable;
    const strObj: *StringObject = @ptrCast(@alignCast(obj));
    return strObj.m_size;
}

/// Get the Unicode code point length.
///
/// May differ from byte size for multi-byte characters.
pub fn stringLen(o: b_obj_arg) usize {
    const obj = o orelse unreachable;
    const strObj: *StringObject = @ptrCast(@alignCast(obj));
    return strObj.m_length;
}

/// Get the capacity (allocated buffer size).
pub inline fn stringCapacity(o: b_obj_arg) usize {
    const obj = o orelse unreachable;
    const strObj: *StringObject = @ptrCast(@alignCast(obj));
    return strObj.m_capacity;
}

/// Get a byte without bounds checking (fast).
///
/// ## Safety
/// Caller must ensure `i < stringSize(o)`.
pub inline fn stringGetByteFast(o: b_obj_arg, i: usize) u8 {
    const cstr = stringCstr(o);
    return cstr[i];
}

// ============================================================================
// String Comparison (Mixed: inline + forwarded)
// ============================================================================

/// Compare two strings for equality (byte-wise).
///
/// ## Performance
/// Fast path: pointer equality check (inline)
/// Slow path: byte-by-byte comparison (forwarded)
pub inline fn stringEq(a: b_obj_arg, b: b_obj_arg) bool {
    if (a == b) return true;
    if (stringSize(a) != stringSize(b)) return false;
    return lean_raw.lean_string_eq_cold(a, b);
}

/// Compare two strings for inequality (byte-wise).
pub inline fn stringNe(a: b_obj_arg, b: b_obj_arg) bool {
    return !stringEq(a, b);
}

/// Lexicographic less-than comparison.
///
/// Returns true if string `a` is lexicographically less than string `b`.
pub fn stringLt(a: b_obj_arg, b: b_obj_arg) bool {
    return lean_raw.lean_string_lt(a, b);
}
