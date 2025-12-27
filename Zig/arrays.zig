//! Array operations for Lean object arrays.
//!
//! Object arrays store pointers to Lean objects with dynamic sizing.
//! Most accessor functions are inline for zero-cost abstractions.

const types = @import("types.zig");
const memory = @import("memory.zig");
const lean_raw = @import("lean_raw");

pub const Object = types.Object;
pub const ObjectHeader = types.ObjectHeader;
pub const ArrayObject = types.ArrayObject;
pub const Tag = types.Tag;
pub const obj_arg = types.obj_arg;
pub const b_obj_arg = types.b_obj_arg;
pub const obj_res = types.obj_res;

pub const lean_alloc_object = memory.lean_alloc_object;

// ============================================================================
// Array Allocation
// ============================================================================

/// Allocate a new Lean array with given capacity.
///
/// The array is initialized with size 0. Use `arraySet` to populate
/// elements and update size, or use `mkArrayWithSize` for pre-sized arrays.
pub fn allocArray(capacity: usize) obj_res {
    const size = @sizeOf(ArrayObject) + capacity * @sizeOf(?*anyopaque);
    const o = lean_alloc_object(size) orelse return null;
    const hdr: *ObjectHeader = @ptrCast(@alignCast(o));
    hdr.m_rc = 1;
    hdr.m_cs_sz = 0; // Large object
    hdr.m_other = 0;
    hdr.m_tag = Tag.array;

    const arr: *ArrayObject = @ptrCast(@alignCast(o));
    arr.m_size = 0;
    arr.m_capacity = capacity;

    return o;
}

/// Create a Lean array with pre-set size.
///
/// ## IMPORTANT: Elements NOT initialized
/// Caller MUST populate ALL elements [0..initialSize) before cleanup.
///
/// ## Safety
/// Calling `lean_dec_ref` on an array with unpopulated elements causes
/// undefined behavior. Either:
/// 1. Populate ALL elements before freeing
/// 2. Set size to 0 before cleanup
/// 3. Manually dec_ref only populated elements
///
/// ## Example
/// ```zig
/// const arr = mkArrayWithSize(3, 3) orelse return error;
/// arraySet(arr, 0, elem0);
/// arraySet(arr, 1, elem1);
/// arraySet(arr, 2, elem2);
/// // Now safe to lean_dec_ref(arr)
/// ```
pub fn mkArrayWithSize(capacity: usize, initialSize: usize) obj_res {
    const o = allocArray(capacity) orelse return null;
    const arr: *ArrayObject = @ptrCast(@alignCast(o));
    arr.m_size = initialSize;
    // Elements NOT initialized - caller must populate
    return o;
}

// ============================================================================
// Array Accessors (Hot Path - Inlined)
// ============================================================================

/// Get the number of elements.
///
/// ## Precondition
/// Input must be a valid, non-null Lean array object.
pub fn arraySize(o: b_obj_arg) usize {
    const obj = o orelse unreachable;
    const arr: *ArrayObject = @ptrCast(@alignCast(obj));
    return arr.m_size;
}

/// Get array capacity (maximum elements before reallocation).
pub inline fn arrayCapacity(o: b_obj_arg) usize {
    const arr: *ArrayObject = @ptrCast(@alignCast(o));
    return arr.m_capacity;
}

/// Get a pointer to the element storage.
///
/// For object arrays, this is an array of object pointers.
pub fn arrayCptr(o: b_obj_arg) [*]obj_arg {
    const obj = o orelse unreachable;
    const base: [*]u8 = @ptrCast(@alignCast(obj));
    return @ptrCast(@alignCast(base + @sizeOf(ArrayObject)));
}

/// Get an element by index (borrowed reference).
///
/// Array retains ownership.
pub fn arrayGet(o: b_obj_arg, i: usize) obj_arg {
    return arrayCptr(o)[i];
}

/// Alias for `arrayGet` (explicitly borrows).
pub const arrayGetBorrowed = arrayGet;

/// Set an element by index.
///
/// ## Safety
/// Array slot at index `i` must be properly initialized before calling.
/// Use `mkArrayWithSize` for arrays with initialized slots, or manually
/// initialize all slots before setting size.
///
/// ## Ownership
/// - Takes ownership of `v`
/// - Does NOT dec_ref old value (caller must ensure slot is safe to overwrite)
pub fn arraySet(o: obj_res, i: usize, v: obj_arg) void {
    arrayCptr(o)[i] = v;
}

/// Get an element without bounds checking (unchecked).
///
/// ## Safety
/// Caller must ensure `i < arraySize(o)`.
pub inline fn arrayUget(o: b_obj_arg, i: usize) obj_arg {
    return arrayCptr(o)[i];
}

/// Set an element without bounds checking (unchecked).
///
/// ## Safety
/// Caller must ensure `i < arraySize(o)`.
pub inline fn arrayUset(o: obj_res, i: usize, v: obj_arg) void {
    arrayCptr(o)[i] = v;
}

/// Swap two elements in an array.
///
/// Efficient in-place operation.
pub fn arraySwap(o: obj_res, i: usize, j: usize) void {
    const elems = arrayCptr(o);
    const temp = elems[i];
    elems[i] = elems[j];
    elems[j] = temp;
}

/// Directly modify the size field.
///
/// ## UNSAFE
/// Bypasses Lean's safety guarantees. Caller must ensure:
/// 1. If increasing size: ALL new slots (old_size..new_size) MUST be initialized
/// 2. If decreasing size: Caller must manually dec_ref removed elements
/// 3. Prefer `mkArrayWithSize` for safe allocation
///
/// Violating these requirements causes undefined behavior.
pub fn arraySetSize(o: obj_res, new_size: usize) void {
    const arr: *ArrayObject = @ptrCast(@alignCast(o));
    arr.m_size = new_size;
}
