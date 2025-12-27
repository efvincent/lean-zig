const std = @import("std");
const testing = std.testing;
const lean = @import("../lean.zig");

// ============================================================================
// Array Tests
// ============================================================================

test "allocate array with capacity" {
    const arr = lean.allocArray(10) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(arr);

    try testing.expectEqual(@as(usize, 0), lean.arraySize(arr));

    const arrObj: *lean.ArrayObject = @ptrCast(@alignCast(arr));
    try testing.expectEqual(@as(usize, 10), arrObj.m_capacity);
}

test "mkArrayWithSize creates presized array" {
    const arr = lean.allocArray(5) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(arr);

    // Manually set size and populate elements
    lean.arraySet(arr, 0, lean.boxUsize(0));
    lean.arraySet(arr, 1, lean.boxUsize(1));
    lean.arraySet(arr, 2, lean.boxUsize(2));
    lean.arraySetSize(arr, 3);

    try testing.expectEqual(@as(usize, 3), lean.arraySize(arr));

    const arrObj: *lean.ArrayObject = @ptrCast(@alignCast(arr));
    try testing.expectEqual(@as(usize, 5), arrObj.m_capacity);
}

test "array get and set operations" {
    const arr = lean.mkArrayWithSize(3, 3) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(arr);

    const val1 = lean.boxUsize(42);
    const val2 = lean.boxUsize(100);
    const val3 = lean.boxUsize(255);

    lean.arraySet(arr, 0, val1);
    lean.arraySet(arr, 1, val2);
    lean.arraySet(arr, 2, val3);

    const retrieved1 = lean.arrayGet(arr, 0);
    const retrieved2 = lean.arrayGet(arr, 1);
    const retrieved3 = lean.arrayGet(arr, 2);

    try testing.expectEqual(@as(usize, 42), lean.unboxUsize(retrieved1));
    try testing.expectEqual(@as(usize, 100), lean.unboxUsize(retrieved2));
    try testing.expectEqual(@as(usize, 255), lean.unboxUsize(retrieved3));
}

test "array has correct tag" {
    const arr = lean.allocArray(5) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(arr);

    try testing.expectEqual(lean.Tag.array, lean.objectTag(arr));
}

test "array: simple allocation and cleanup" {
    const arr = lean.mkArrayWithSize(3, 3) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(arr);

    // Verify size was set correctly
    try testing.expectEqual(@as(usize, 3), lean.arraySize(arr));

    // Populate all elements before cleanup
    lean.arraySet(arr, 0, lean.boxUsize(10));
    lean.arraySet(arr, 1, lean.boxUsize(20));
    lean.arraySet(arr, 2, lean.boxUsize(30));

    const size = lean.arraySize(arr);
    try testing.expectEqual(@as(usize, 3), size);
}

test "array: swap elements at different indices" {
    const arr = lean.mkArrayWithSize(5, 5) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(arr);

    // Populate all elements before any operations
    lean.arraySet(arr, 0, lean.boxUsize(10));
    lean.arraySet(arr, 1, lean.boxUsize(20));
    lean.arraySet(arr, 2, lean.boxUsize(30));
    lean.arraySet(arr, 3, lean.boxUsize(40));
    lean.arraySet(arr, 4, lean.boxUsize(50));

    // Swap indices 1 and 3
    lean.arraySwap(arr, 1, 3);

    // Verify swap
    try testing.expectEqual(@as(usize, 40), lean.unboxUsize(lean.arrayGet(arr, 1)));
    try testing.expectEqual(@as(usize, 20), lean.unboxUsize(lean.arrayGet(arr, 3)));
    // Other elements unchanged
    try testing.expectEqual(@as(usize, 10), lean.unboxUsize(lean.arrayGet(arr, 0)));
    try testing.expectEqual(@as(usize, 30), lean.unboxUsize(lean.arrayGet(arr, 2)));
    try testing.expectEqual(@as(usize, 50), lean.unboxUsize(lean.arrayGet(arr, 4)));
}

test "array: swap same index is no-op" {
    const arr = lean.mkArrayWithSize(3, 3) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(arr);

    // Populate all elements
    lean.arraySet(arr, 0, lean.boxUsize(10));
    lean.arraySet(arr, 1, lean.boxUsize(42));
    lean.arraySet(arr, 2, lean.boxUsize(30));
    lean.arraySwap(arr, 1, 1);

    try testing.expectEqual(@as(usize, 42), lean.unboxUsize(lean.arrayGet(arr, 1)));
}

test "array: unchecked get performance" {
    const arr = lean.mkArrayWithSize(100, 100) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(arr);

    // Populate all elements (required before cleanup)
    var i: usize = 0;
    while (i < 100) : (i += 1) {
        lean.arraySet(arr, i, lean.boxUsize(i * 2));
    }

    // Verify unchecked access matches checked
    i = 0;
    while (i < 100) : (i += 1) {
        const checked = lean.arrayGet(arr, i);
        const unchecked = lean.arrayUget(arr, i);
        try testing.expectEqual(checked, unchecked);
    }
}

test "array: capacity >= size invariant" {
    const arr = lean.allocArray(10) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(arr);

    const cap = lean.arrayCapacity(arr);
    const size = lean.arraySize(arr);

    try testing.expect(cap >= size);
    try testing.expectEqual(@as(usize, 10), cap);
    try testing.expectEqual(@as(usize, 0), size);
}
