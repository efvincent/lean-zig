const std = @import("std");
const testing = std.testing;
const lean = @import("../lean.zig");

// ============================================================================
// Constructor Tests
// ============================================================================

test "allocate constructor with no fields" {
    // Unit type / empty constructor
    const obj = lean.allocCtor(0, 0, 0) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(obj);

    try testing.expectEqual(@as(u8, 0), lean.objectTag(obj));
    try testing.expectEqual(@as(u8, 0), lean.objectOther(obj));
}

test "allocate constructor with object fields" {
    // Pair-like constructor with 2 object fields
    const pair = lean.allocCtor(0, 2, 0) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(pair);

    const first = lean.boxUsize(10);
    const second = lean.boxUsize(20);

    lean.ctorSet(pair, 0, first);
    lean.ctorSet(pair, 1, second);

    const retrieved_first = lean.ctorGet(pair, 0);
    const retrieved_second = lean.ctorGet(pair, 1);

    try testing.expectEqual(@as(usize, 10), lean.unboxUsize(retrieved_first));
    try testing.expectEqual(@as(usize, 20), lean.unboxUsize(retrieved_second));
}

test "constructor tag field" {
    const obj = lean.allocCtor(5, 0, 0) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(obj);

    try testing.expectEqual(@as(u8, 5), lean.objectTag(obj));
}

test "constructor stores numObjs in m_other field" {
    const obj = lean.allocCtor(0, 3, 0) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(obj);

    try testing.expectEqual(@as(u8, 3), lean.objectOther(obj));
}
