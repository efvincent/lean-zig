const std = @import("std");
const testing = std.testing;
const lean = @import("../lean.zig");

// ============================================================================
// Type Inspection Tests
// ============================================================================

test "type: isScalar detects tagged pointers" {
    const scalar = lean.boxUsize(42);
    try testing.expect(lean.isScalar(scalar));
    try testing.expect(lean.isCtor(scalar)); // Tagged scalars are treated as constructors in Lean's runtime
    try testing.expect(!lean.isString(scalar));
    try testing.expect(!lean.isArray(scalar));
}

test "type: isCtor detects constructor objects" {
    const ctor = lean.allocCtor(0, 0, 0) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);
    try testing.expect(lean.isCtor(ctor));
    try testing.expect(!lean.isScalar(ctor));
    try testing.expect(!lean.isString(ctor));
}

test "type: isString detects string objects" {
    const str = lean.lean_mk_string("test");
    defer lean.lean_dec_ref(str);
    try testing.expect(lean.isString(str));
    try testing.expect(!lean.isCtor(str));
    try testing.expect(!lean.isArray(str));
    try testing.expectEqual(lean.Tag.string, lean.objectTag(str));
}

test "type: isArray detects array objects" {
    const arr = lean.allocArray(5) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(arr);
    try testing.expect(lean.isArray(arr));
    try testing.expect(!lean.isCtor(arr));
    try testing.expect(!lean.isString(arr));
    try testing.expectEqual(lean.Tag.array, lean.objectTag(arr));
}

test "type: type checks are mutually exclusive for heap objects" {
    const ctor = lean.allocCtor(0, 0, 0) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);
    const arr = lean.allocArray(1) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(arr);
    const str = lean.lean_mk_string("x");
    defer lean.lean_dec_ref(str);

    // Constructor is only ctor
    try testing.expect(lean.isCtor(ctor));
    try testing.expect(!lean.isArray(ctor));
    try testing.expect(!lean.isString(ctor));

    // Array is only array
    try testing.expect(lean.isArray(arr));
    try testing.expect(!lean.isCtor(arr));
    try testing.expect(!lean.isString(arr));

    // String is only string
    try testing.expect(lean.isString(str));
    try testing.expect(!lean.isCtor(str));
    try testing.expect(!lean.isArray(str));
}

test "type: isExclusive true when rc == 1" {
    const obj = lean.allocCtor(0, 0, 0) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(obj);
    try testing.expect(lean.isExclusive(obj));
    try testing.expect(!lean.isShared(obj));
}

test "type: isShared true when rc > 1" {
    const obj = lean.allocCtor(0, 0, 0) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(obj);

    lean.lean_inc_ref(obj);
    defer lean.lean_dec_ref(obj);

    try testing.expect(lean.isShared(obj));
    try testing.expect(!lean.isExclusive(obj));
}

test "type: isExclusive true for scalars" {
    const scalar = lean.boxUsize(100);
    try testing.expect(lean.isExclusive(scalar));
}

test "type: ptrTag distinguishes heap from scalar" {
    const scalar = lean.boxUsize(42);
    try testing.expectEqual(@as(usize, 1), lean.ptrTag(scalar));

    const heap = lean.allocCtor(0, 0, 0) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(heap);
    try testing.expectEqual(@as(usize, 0), lean.ptrTag(heap));
}

test "type: objTag returns correct tag for constructors" {
    const tests = [_]struct { tag: u8 }{
        .{ .tag = 0 },
        .{ .tag = 1 },
        .{ .tag = 100 },
        .{ .tag = 243 },
    };

    for (tests) |t| {
        const obj = lean.allocCtor(t.tag, 0, 0) orelse return error.AllocationFailed;
        defer lean.lean_dec_ref(obj);
        try testing.expectEqual(t.tag, lean.objectTag(obj));
    }
}

test "type: objTag returns correct tag for special types" {
    const arr = lean.allocArray(1) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(arr);
    try testing.expectEqual(lean.Tag.array, lean.objectTag(arr));

    const str = lean.lean_mk_string("test");
    defer lean.lean_dec_ref(str);
    try testing.expectEqual(lean.Tag.string, lean.objectTag(str));
}

test "type: constructor tags within valid range" {
    const ctor = lean.allocCtor(100, 0, 0) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);
    try testing.expect(lean.objectTag(ctor) <= lean.Tag.max_ctor);
}

test "type: max constructor tag boundary" {
    const ctor = lean.allocCtor(lean.Tag.max_ctor, 0, 0) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);
    try testing.expect(lean.isCtor(ctor));
    try testing.expectEqual(lean.Tag.max_ctor, lean.objectTag(ctor));
}

test "type: special types not detected as constructors" {
    const arr = lean.allocArray(1) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(arr);
    // Array tag (246) is > max_ctor (243)
    try testing.expect(!lean.isCtor(arr));
    try testing.expect(lean.objectTag(arr) > lean.Tag.max_ctor);

    const str = lean.lean_mk_string("test");
    defer lean.lean_dec_ref(str);
    try testing.expect(!lean.isCtor(str));
    try testing.expect(lean.objectTag(str) > lean.Tag.max_ctor);
}

test "type: isExclusive with scalars" {
    // Scalars are always exclusive (no refcount)
    const scalar = lean.boxUsize(999);
    try testing.expect(lean.isExclusive(scalar));
    try testing.expect(!lean.isShared(scalar));
}
