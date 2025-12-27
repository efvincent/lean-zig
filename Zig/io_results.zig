//! IO result helpers for Lean's EStateM.Result type.
//!
//! IO operations return Result with constructors for success/error.
//! All functions are inline for zero-cost abstractions.

const types = @import("types.zig");
const constructors = @import("constructors.zig");
const memory = @import("memory.zig");

pub const ObjectHeader = types.ObjectHeader;
pub const obj_arg = types.obj_arg;
pub const b_obj_arg = types.b_obj_arg;
pub const obj_res = types.obj_res;

pub const allocCtor = constructors.allocCtor;
pub const ctorSet = constructors.ctorSet;
pub const ctorGet = constructors.ctorGet;

// ============================================================================
// IO Result Construction
// ============================================================================

/// Create an IO success result.
///
/// Equivalent to `EStateM.Result.ok` in Lean.
/// The resulting object owns the provided value.
///
/// ## Example
/// ```zig
/// const str = lean.lean_mk_string_from_bytes("hello", 5);
/// return ioResultMkOk(str);
/// ```
pub fn ioResultMkOk(a: obj_arg) obj_res {
    const r = allocCtor(0, 1, 0) orelse return null;
    ctorSet(r, 0, a);
    return r;
}

/// Create an IO error result.
///
/// Equivalent to `EStateM.Result.error` in Lean.
/// Typically the error value is a string describing failure.
///
/// ## Example
/// ```zig
/// const msg = lean.lean_mk_string_from_bytes("allocation failed", 17);
/// return ioResultMkError(msg);
/// ```
pub fn ioResultMkError(e: obj_arg) obj_res {
    const r = allocCtor(1, 1, 0) orelse return null;
    ctorSet(r, 0, e);
    return r;
}

// ============================================================================
// IO Result Inspection
// ============================================================================

/// Check if IO result represents success.
///
/// ## Precondition
/// Input must be a valid, non-null IO result object.
pub fn ioResultIsOk(r: b_obj_arg) bool {
    const obj = r orelse unreachable;
    const hdr: *const ObjectHeader = @ptrCast(@alignCast(obj));
    return hdr.m_tag == 0;
}

/// Check if IO result represents an error.
///
/// ## Precondition
/// Input must be a valid, non-null IO result object.
pub fn ioResultIsError(r: b_obj_arg) bool {
    const obj = r orelse unreachable;
    const hdr: *const ObjectHeader = @ptrCast(@alignCast(obj));
    return hdr.m_tag == 1;
}

/// Extract the value from a successful IO result.
///
/// ## Precondition
/// `ioResultIsOk(r)` must be true.
pub fn ioResultGetValue(r: b_obj_arg) obj_arg {
    return ctorGet(r, 0);
}
