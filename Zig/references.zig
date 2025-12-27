//! Reference operations for ST monad mutable cells.
//!
//! References provide single-threaded local mutation.
//! All accessor functions are inline for zero-cost abstractions.

const types = @import("types.zig");
const memory = @import("memory.zig");

pub const RefObject = types.RefObject;
pub const obj_arg = types.obj_arg;
pub const b_obj_arg = types.b_obj_arg;

pub const lean_dec_ref = memory.lean_dec_ref;

// ============================================================================
// Reference Accessors (Hot Path - All Inlined)
// ============================================================================

/// Get the current value from a reference (borrowed).
///
/// ## Precondition
/// Input must be a valid reference object.
pub inline fn refGet(o: b_obj_arg) obj_arg {
    const obj = o orelse unreachable;
    const ref: *RefObject = @ptrCast(@alignCast(obj));
    return ref.m_value;
}

/// Set a new value in a reference.
///
/// Decrements old value's reference count and stores new value.
///
/// ## Preconditions
/// - Input must be valid reference with exclusive ownership
/// - New value must have appropriate reference count
pub inline fn refSet(o: obj_arg, v: obj_arg) void {
    const obj = o orelse unreachable;
    const ref: *RefObject = @ptrCast(@alignCast(obj));

    // Dec_ref old value
    const old = ref.m_value;
    if (old) |old_obj| {
        lean_dec_ref(old_obj);
    }

    ref.m_value = v;
}
