//! Closure operations for Lean functional programming.
//!
//! Closures represent partially-applied functions with captured environment.
//! All accessor functions are inline for zero-cost abstractions.

const types = @import("types.zig");
const memory = @import("memory.zig");

pub const ObjectHeader = types.ObjectHeader;
pub const ClosureObject = types.ClosureObject;
pub const Tag = types.Tag;
pub const obj_arg = types.obj_arg;
pub const b_obj_arg = types.b_obj_arg;
pub const obj_res = types.obj_res;

pub const lean_alloc_object = memory.lean_alloc_object;
pub const lean_dec_ref = memory.lean_dec_ref;

// ============================================================================
// Closure Allocation
// ============================================================================

/// Allocate a closure object for partial application.
///
/// ## Parameters
/// - `fun` - Function pointer to invoke when closure saturated
/// - `arity` - Total number of parameters function expects
/// - `num_fixed` - Number of arguments to store (partial application)
///
/// ## Returns
/// New closure with uninitialized fixed args. Caller must populate using
/// `closureSet` before use.
///
/// ## Implementation Note
/// Inline function matching lean.h for zero-cost FFI.
pub inline fn lean_alloc_closure(fun: *anyopaque, arity: u32, num_fixed: u32) obj_res {
    const size = @sizeOf(ClosureObject) + @sizeOf(?*anyopaque) * num_fixed;
    const obj = lean_alloc_object(size) orelse return null;

    // Set header
    const header: *ObjectHeader = @ptrCast(@alignCast(obj));
    header.m_tag = Tag.closure;
    header.m_other = 0;

    // Set closure fields
    const closure: *ClosureObject = @ptrCast(@alignCast(obj));
    closure.m_fun = fun;
    closure.m_arity = @intCast(arity);
    closure.m_num_fixed = @intCast(num_fixed);

    // Zero-initialize fixed arguments for safety
    // Prevents closureSet from dec_ref'ing garbage
    const args_offset = @sizeOf(ClosureObject);
    const args: [*]obj_arg = @ptrCast(@alignCast(@as([*]u8, @ptrCast(@alignCast(obj))) + args_offset));
    for (0..num_fixed) |i| {
        args[i] = null;
    }

    return obj;
}

// ============================================================================
// Closure Accessors (Hot Path - All Inlined)
// ============================================================================

/// Get the total arity (parameter count).
///
/// Returns total number of parameters the function expects.
/// Remaining parameters: arity - closureNumFixed(c)
pub inline fn closureArity(o: b_obj_arg) u16 {
    const obj = o orelse unreachable;
    const closure: *ClosureObject = @ptrCast(@alignCast(obj));
    return closure.m_arity;
}

/// Get the number of fixed (captured) arguments.
///
/// Returns how many arguments have been partially applied.
pub inline fn closureNumFixed(o: b_obj_arg) u16 {
    const obj = o orelse unreachable;
    const closure: *ClosureObject = @ptrCast(@alignCast(obj));
    return closure.m_num_fixed;
}

/// Get the function pointer.
///
/// Returns opaque pointer to underlying function.
/// Caller must cast to appropriate function signature.
pub inline fn closureFun(o: b_obj_arg) *const anyopaque {
    const obj = o orelse unreachable;
    const closure: *ClosureObject = @ptrCast(@alignCast(obj));
    return closure.m_fun;
}

/// Get a fixed argument by index (borrowed).
///
/// Returns borrowed reference to captured argument.
/// Caller must not dec_ref this object.
///
/// ## Preconditions
/// - Input must be valid, non-null closure
/// - i must be < closureNumFixed(o)
pub inline fn closureGet(o: b_obj_arg, i: usize) obj_arg {
    const obj = o orelse unreachable;
    const base: [*]u8 = @ptrCast(@alignCast(obj));
    const args_offset = @sizeOf(ClosureObject);
    const args: [*]obj_arg = @ptrCast(@alignCast(base + args_offset));
    return args[i];
}

/// Set a fixed argument by index.
///
/// Stores new value in captured arguments array.
/// Takes ownership of new value and dec_refs old value.
///
/// ## UNSAFE
/// - Input must be valid, non-null closure
/// - i must be < closureNumFixed(o)
/// - Caller must ensure closure has exclusive ownership (rc == 1)
pub inline fn closureSet(o: obj_arg, i: usize, v: obj_arg) void {
    const obj = o orelse unreachable;
    const base: [*]u8 = @ptrCast(@alignCast(obj));
    const args_offset = @sizeOf(ClosureObject);
    const args: [*]obj_arg = @ptrCast(@alignCast(base + args_offset));

    // Dec_ref old value if it exists
    const old = args[i];
    if (old) |old_obj| {
        lean_dec_ref(old_obj);
    }

    args[i] = v;
}

/// Get direct pointer to fixed arguments array.
///
/// Useful for bulk operations or iteration.
pub inline fn closureArgCptr(o: b_obj_arg) [*]obj_arg {
    const obj = o orelse unreachable;
    const base: [*]u8 = @ptrCast(@alignCast(obj));
    const args_offset = @sizeOf(ClosureObject);
    return @ptrCast(@alignCast(base + args_offset));
}
