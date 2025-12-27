//! Thunk operations for lazy evaluation.
//!
//! Thunks represent lazy computations cached on first access.
//! Mixed inline (fast path) and forwarded (evaluation) functions.

const types = @import("types.zig");
const memory = @import("memory.zig");
const lean_raw = @import("lean_raw");

pub const ObjectHeader = types.ObjectHeader;
pub const ThunkObject = types.ThunkObject;
pub const Tag = types.Tag;
pub const obj_arg = types.obj_arg;
pub const b_obj_arg = types.b_obj_arg;
pub const obj_res = types.obj_res;

pub const lean_alloc_object = memory.lean_alloc_object;
pub const lean_inc_ref = memory.lean_inc_ref;

// ============================================================================
// Thunk Creation
// ============================================================================

/// Create a thunk that's already evaluated (pure value).
///
/// ## Parameters
/// - `v` - The value to wrap (takes ownership)
///
/// ## Returns
/// Thunk object with cached value, no closure needed.
///
/// ## Implementation Note
/// Inline function matching lean.h for zero-cost FFI.
pub inline fn lean_thunk_pure(v: obj_arg) obj_res {
    const size = @sizeOf(ThunkObject);
    const obj = lean_alloc_object(size) orelse return null;

    // Set header
    const header: *ObjectHeader = @ptrCast(@alignCast(obj));
    header.m_tag = Tag.thunk;
    header.m_other = 0;

    // Set thunk fields
    const thunk: *ThunkObject = @ptrCast(@alignCast(obj));
    thunk.m_value = v;
    thunk.m_closure = null;

    return obj;
}

// ============================================================================
// Thunk Evaluation (Mixed: inline fast path + forwarded evaluation)
// ============================================================================

/// Core thunk evaluation function (forwarded from lean_raw).
///
/// **Cold path**: Handles thread-safe evaluation and caching.
extern fn lean_thunk_get_core(t: obj_arg) obj_res;

/// Get the cached value from a thunk (borrowed reference).
///
/// If not evaluated yet, forces evaluation via `lean_thunk_get_core`.
///
/// ## Preconditions
/// - Input must be valid non-null thunk object
/// - Passing null triggers unreachable panic
///
/// **Mixed path**: Inline fast check, forwards to lean_raw for evaluation.
pub inline fn thunkGet(t: b_obj_arg) obj_arg {
    const obj = t orelse unreachable;
    const thunk: *ThunkObject = @ptrCast(@alignCast(obj));

    // Fast path: value already computed
    if (thunk.m_value) |val| {
        return @ptrCast(val);
    }

    // Slow path: need to evaluate closure
    return lean_thunk_get_core(obj);
}

/// Evaluate thunk and return value with ownership transferred.
///
/// Implements `Thunk.get : Thunk A -> A`.
/// Increments reference count before returning.
///
/// ## Parameters
/// - `t` - Thunk to evaluate (borrowed)
///
/// ## Returns
/// Evaluated value (caller owns).
pub inline fn lean_thunk_get_own(t: b_obj_arg) obj_res {
    const result = thunkGet(t);
    lean_inc_ref(result);
    return result;
}
