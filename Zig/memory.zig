//! Memory management and type inspection for Lean runtime objects.
//!
//! Provides reference counting, type checking, and memory queries.
//! Most functions are inline for zero-cost abstractions.

const types = @import("types.zig");
const lean_raw = @import("lean_raw");

// Re-export types for convenience
pub const Object = types.Object;
pub const ObjectHeader = types.ObjectHeader;
pub const obj_arg = types.obj_arg;
pub const b_obj_arg = types.b_obj_arg;
pub const obj_res = types.obj_res;
pub const Tag = types.Tag;

// ============================================================================
// External Runtime Functions
// ============================================================================

/// Allocate a raw Lean object of the given byte size.
///
/// The returned object has uninitialized fields. Caller must initialize
/// the header fields (m_rc, m_tag, etc.) before use.
pub const lean_alloc_object = lean_raw.lean_alloc_object;

/// Helper for cold path of dec_ref (exported from Lean runtime).
///
/// This function is part of the Lean runtime and handles complex cleanup
/// including multi-threaded objects and finalizers.
extern fn lean_dec_ref_cold(o: obj_arg) void;

// ============================================================================
// Reference Counting
// ============================================================================

/// Increment an object's reference count.
///
/// Call when storing an additional reference to a borrowed object.
///
/// **Hot path**: Inline function with fast path for ST objects.
///
/// ## Safety
/// - NULL pointers are safely ignored
/// - Tagged pointers (scalars) are safely ignored
pub inline fn lean_inc_ref(o: obj_arg) void {
    const obj = o orelse return;
    // Tagged pointers (scalars) don't have reference counts - skip them
    if (isScalar(obj)) return;

    const hdr: *ObjectHeader = @ptrCast(@alignCast(obj));
    // Simple case: single-threaded object (positive refcount)
    if (hdr.m_rc > 0) {
        hdr.m_rc += 1;
    }
    // For MT objects (m_rc <= 0), should use atomic increment
}

/// Decrement an object's reference count.
///
/// May free the object if the count reaches zero. Do not use the object
/// after calling this unless you hold another reference.
///
/// **Hot path**: Inline function with fast path for simple dec.
///
/// ## Safety
/// - NULL pointers are safely ignored
/// - Tagged pointers (scalars) are safely ignored
/// - Immortal objects (rc=0) are never freed
pub inline fn lean_dec_ref(o: obj_arg) void {
    const obj = o orelse return;
    // Tagged pointers (scalars) don't have reference counts - skip them
    if (isScalar(obj)) return;

    const hdr: *ObjectHeader = @ptrCast(@alignCast(obj));
    // Fast path: refcount > 1, just decrement
    if (hdr.m_rc > 1) {
        hdr.m_rc -= 1;
    } else if (hdr.m_rc != 0) {
        // Cold path: refcount == 1 or multi-threaded, need to free
        lean_dec_ref_cold(o);
    }
    // If m_rc == 0, it's a persistent/immortal object, do nothing
}

// ============================================================================
// Type Inspection
// ============================================================================

/// Check if an object is a scalar (tagged pointer).
///
/// Scalars are small integers encoded directly in the pointer with
/// the low bit set to 1. They don't require allocation or refcounting.
pub inline fn isScalar(o: b_obj_arg) bool {
    return (@intFromPtr(o) & 1) == 1;
}

/// Get the tag byte from an object header.
///
/// For heap objects, returns the m_tag field. For scalars, returns 0.
pub inline fn objectTag(o: b_obj_arg) u8 {
    const obj = o orelse unreachable;
    if (isScalar(obj)) return 0;
    const hdr: *const ObjectHeader = @ptrCast(@alignCast(obj));
    return hdr.m_tag;
}

/// Get the reference count from an object header.
pub inline fn objectRc(o: b_obj_arg) i32 {
    const obj = o orelse unreachable;
    const hdr: *const ObjectHeader = @ptrCast(@alignCast(obj));
    return hdr.m_rc;
}

/// Get the m_other field from an object header.
pub inline fn objectOther(o: b_obj_arg) u8 {
    const obj = o orelse unreachable;
    const hdr: *const ObjectHeader = @ptrCast(@alignCast(obj));
    return hdr.m_other;
}

/// Get the pointer tag bit (0 for heap objects, 1 for scalars).
pub inline fn ptrTag(o: b_obj_arg) u8 {
    return @intCast(@intFromPtr(o) & 1);
}

/// Check if object is a constructor.
///
/// Includes scalars (small integers) and heap constructors (tag ≤ max_ctor).
pub inline fn isCtor(o: b_obj_arg) bool {
    if (isScalar(o)) return true;
    return objectTag(o) <= Tag.max_ctor;
}

/// Check if object is a string.
pub inline fn isString(o: b_obj_arg) bool {
    return !isScalar(o) and objectTag(o) == Tag.string;
}

/// Check if object is an array.
pub inline fn isArray(o: b_obj_arg) bool {
    return !isScalar(o) and objectTag(o) == Tag.array;
}

/// Check if object is a scalar array.
pub inline fn isSarray(o: b_obj_arg) bool {
    return !isScalar(o) and objectTag(o) == Tag.sarray;
}

/// Check if object is a closure.
pub inline fn isClosure(o: b_obj_arg) bool {
    return !isScalar(o) and objectTag(o) == Tag.closure;
}

/// Check if object is a thunk.
pub inline fn isThunk(o: b_obj_arg) bool {
    return !isScalar(o) and objectTag(o) == Tag.thunk;
}

/// Check if object is a task.
pub inline fn isTask(o: b_obj_arg) bool {
    return !isScalar(o) and objectTag(o) == Tag.task;
}

/// Check if object is a reference.
pub inline fn isRef(o: b_obj_arg) bool {
    return !isScalar(o) and objectTag(o) == Tag.ref;
}

/// Check if object is external (foreign).
pub inline fn isExternal(o: b_obj_arg) bool {
    return !isScalar(o) and objectTag(o) == Tag.external;
}

/// Check if object is a big integer (mpz).
pub inline fn isMpz(o: b_obj_arg) bool {
    return !isScalar(o) and objectTag(o) == Tag.mpz;
}

/// Check if object is exclusive (refcount == 1).
///
/// Exclusive objects can be mutated in-place without copying.
/// Scalars are always considered exclusive.
pub inline fn isExclusive(o: b_obj_arg) bool {
    const obj = o orelse return false;
    if (isScalar(obj)) return true;
    return objectRc(obj) == 1;
}

/// Check if object is shared (refcount > 1).
///
/// Shared objects must be copied before mutation.
pub inline fn isShared(o: b_obj_arg) bool {
    return !isExclusive(o);
}
