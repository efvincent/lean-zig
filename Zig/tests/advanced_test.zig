const std = @import("std");
const testing = std.testing;
const lean = @import("../lean.zig");

// ============================================================================
// Constructor Scalar Accessor Tests
// ============================================================================

test "ctor scalar: uint8 round-trip" {
    const ctor = lean.allocCtor(0, 0, 1) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);

    const values = [_]u8{ 0, 1, 127, 255 };
    for (values) |val| {
        lean.ctorSetUint8(ctor, 0, val);
        const retrieved = lean.ctorGetUint8(ctor, 0);
        try testing.expectEqual(val, retrieved);
    }
}

test "ctor scalar: uint16 round-trip" {
    const ctor = lean.allocCtor(0, 0, 2) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);

    const values = [_]u16{ 0, 1, 256, 32767, 65535 };
    for (values) |val| {
        lean.ctorSetUint16(ctor, 0, val);
        const retrieved = lean.ctorGetUint16(ctor, 0);
        try testing.expectEqual(val, retrieved);
    }
}

test "ctor scalar: uint32 round-trip" {
    const ctor = lean.allocCtor(0, 0, 4) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);

    const values = [_]u32{ 0, 1, 65536, 2147483647, 4294967295 };
    for (values) |val| {
        lean.ctorSetUint32(ctor, 0, val);
        const retrieved = lean.ctorGetUint32(ctor, 0);
        try testing.expectEqual(val, retrieved);
    }
}

test "ctor scalar: uint64 round-trip" {
    const ctor = lean.allocCtor(0, 0, 8) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);

    const values = [_]u64{
        0,
        1,
        4294967296,
        9223372036854775807, // Max i64
        18446744073709551615, // Max u64
    };
    for (values) |val| {
        lean.ctorSetUint64(ctor, 0, val);
        const retrieved = lean.ctorGetUint64(ctor, 0);
        try testing.expectEqual(val, retrieved);
    }
}

test "ctor scalar: usize round-trip" {
    const ctor = lean.allocCtor(0, 0, @sizeOf(usize)) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);

    const values = [_]usize{ 0, 1, 4294967296, @as(usize, 1) << 62 };
    for (values) |val| {
        lean.ctorSetUsize(ctor, 0, val);
        const retrieved = lean.ctorGetUsize(ctor, 0);
        try testing.expectEqual(val, retrieved);
    }
}

test "ctor scalar: float64 round-trip" {
    const ctor = lean.allocCtor(0, 0, @sizeOf(f64)) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);

    const values = [_]f64{
        0.0,
        -0.0,
        1.0,
        -1.0,
        3.14159,
        -3.14159,
    };
    for (values) |val| {
        lean.ctorSetFloat(ctor, 0, val);
        const retrieved = lean.ctorGetFloat(ctor, 0);
        try testing.expectEqual(val, retrieved);
    }
}

test "ctor scalar: float64 special values" {
    const ctor = lean.allocCtor(0, 0, @sizeOf(f64)) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);

    const inf = std.math.inf(f64);
    lean.ctorSetFloat(ctor, 0, inf);
    try testing.expect(std.math.isInf(lean.ctorGetFloat(ctor, 0)));

    const ninf = -std.math.inf(f64);
    lean.ctorSetFloat(ctor, 0, ninf);
    try testing.expect(std.math.isNegativeInf(lean.ctorGetFloat(ctor, 0)));

    const nan = std.math.nan(f64);
    lean.ctorSetFloat(ctor, 0, nan);
    try testing.expect(std.math.isNan(lean.ctorGetFloat(ctor, 0)));
}

test "ctor scalar: float32 round-trip" {
    const ctor = lean.allocCtor(0, 0, @sizeOf(f32)) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);

    const values = [_]f32{ 0.0, 1.0, -1.0, 3.14, -3.14 };
    for (values) |val| {
        lean.ctorSetFloat32(ctor, 0, val);
        const retrieved = lean.ctorGetFloat32(ctor, 0);
        try testing.expectEqual(val, retrieved);
    }
}

test "ctor scalar: multiple fields with different types" {
    // Create: struct { id: u64, score: f64, flag: u8 }
    const scalar_size = @sizeOf(u64) + @sizeOf(f64) + @sizeOf(u8);
    const ctor = lean.allocCtor(0, 0, scalar_size) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);

    const offset_id: usize = 0;
    const offset_score: usize = @sizeOf(u64);
    const offset_flag: usize = @sizeOf(u64) + @sizeOf(f64);

    lean.ctorSetUint64(ctor, offset_id, 12345);
    lean.ctorSetFloat(ctor, offset_score, 98.6);
    lean.ctorSetUint8(ctor, offset_flag, 1);

    try testing.expectEqual(@as(u64, 12345), lean.ctorGetUint64(ctor, offset_id));
    try testing.expectEqual(@as(f64, 98.6), lean.ctorGetFloat(ctor, offset_score));
    try testing.expectEqual(@as(u8, 1), lean.ctorGetUint8(ctor, offset_flag));
}

test "ctor scalar: aligned multi-field access" {
    const ctor = lean.allocCtor(0, 0, 16) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);

    // Write u64 at offset 0 (aligned)
    lean.ctorSetUint64(ctor, 0, 0xDEADBEEF);
    // Write u64 at offset 8 (aligned)
    lean.ctorSetUint64(ctor, 8, 0xCAFEBABE);

    try testing.expectEqual(@as(u64, 0xDEADBEEF), lean.ctorGetUint64(ctor, 0));
    try testing.expectEqual(@as(u64, 0xCAFEBABE), lean.ctorGetUint64(ctor, 8));
}

test "ctor utility: ctorNumObjs returns correct count" {
    const tests = [_]struct { num_objs: u8 }{
        .{ .num_objs = 0 },
        .{ .num_objs = 1 },
        .{ .num_objs = 10 },
        .{ .num_objs = 255 },
    };

    for (tests) |t| {
        const ctor = lean.allocCtor(0, t.num_objs, 0) orelse return error.AllocationFailed;
        defer lean.lean_dec_ref(ctor);
        try testing.expectEqual(t.num_objs, lean.ctorNumObjs(ctor));
    }
}

test "ctor utility: ctorSetTag changes constructor variant" {
    const ctor = lean.allocCtor(0, 0, 0) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);

    try testing.expectEqual(@as(u8, 0), lean.objectTag(ctor));

    lean.ctorSetTag(ctor, 5);
    try testing.expectEqual(@as(u8, 5), lean.objectTag(ctor));

    lean.ctorSetTag(ctor, 200);
    try testing.expectEqual(@as(u8, 200), lean.objectTag(ctor));
}

test "ctor utility: ctorScalarCptr points to correct region" {
    const ctor = lean.allocCtor(0, 2, 8) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);

    const scalar_ptr = lean.ctorScalarCptr(ctor);
    // Write directly via pointer
    scalar_ptr[0] = 42;
    scalar_ptr[7] = 99;

    // Verify via typed accessor
    try testing.expectEqual(@as(u8, 42), lean.ctorGetUint8(ctor, 0));
    try testing.expectEqual(@as(u8, 99), lean.ctorGetUint8(ctor, 7));
}

test "ctor utility: ctorRelease decrements field references" {
    const ctor = lean.allocCtor(0, 2, 0) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);

    const field1 = lean.allocCtor(0, 0, 0) orelse return error.AllocationFailed;
    const field2 = lean.allocCtor(0, 0, 0) orelse return error.AllocationFailed;

    lean.lean_inc_ref(field1);
    lean.lean_inc_ref(field2);

    lean.ctorSet(ctor, 0, field1);
    lean.ctorSet(ctor, 1, field2);

    try testing.expectEqual(@as(i32, 2), lean.objectRc(field1));
    try testing.expectEqual(@as(i32, 2), lean.objectRc(field2));

    lean.ctorRelease(ctor, 2);

    try testing.expectEqual(@as(i32, 1), lean.objectRc(field1));
    try testing.expectEqual(@as(i32, 1), lean.objectRc(field2));

    // Clean up
    lean.lean_dec_ref(field1);
    lean.lean_dec_ref(field2);
}

test "ctor scalar: mixed object and scalar fields" {
    const ctor = lean.allocCtor(0, 2, @sizeOf(u64)) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);

    // Set object fields
    lean.ctorSet(ctor, 0, lean.boxUsize(100));
    lean.ctorSet(ctor, 1, lean.boxUsize(200));

    // Set scalar field
    lean.ctorSetUint64(ctor, 0, 0xABCDEF);

    // Verify object fields
    try testing.expectEqual(@as(usize, 100), lean.unboxUsize(lean.ctorGet(ctor, 0)));
    try testing.expectEqual(@as(usize, 200), lean.unboxUsize(lean.ctorGet(ctor, 1)));

    // Verify scalar field
    try testing.expectEqual(@as(u64, 0xABCDEF), lean.ctorGetUint64(ctor, 0));
}

test "ctor scalar: zero-size scalar region" {
    // Constructor with only object fields, no scalar fields
    const ctor = lean.allocCtor(0, 3, 0) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);

    lean.ctorSet(ctor, 0, lean.boxUsize(1));
    lean.ctorSet(ctor, 1, lean.boxUsize(2));
    lean.ctorSet(ctor, 2, lean.boxUsize(3));

    try testing.expectEqual(@as(usize, 1), lean.unboxUsize(lean.ctorGet(ctor, 0)));
    try testing.expectEqual(@as(usize, 2), lean.unboxUsize(lean.ctorGet(ctor, 1)));
    try testing.expectEqual(@as(usize, 3), lean.unboxUsize(lean.ctorGet(ctor, 2)));
}

test "ctor scalar: boundary value testing" {
    const ctor = lean.allocCtor(0, 0, @sizeOf(u8) * 4) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ctor);

    // Test min and max values for u8
    lean.ctorSetUint8(ctor, 0, 0);
    lean.ctorSetUint8(ctor, 1, 255);
    lean.ctorSetUint8(ctor, 2, 127);
    lean.ctorSetUint8(ctor, 3, 128);

    try testing.expectEqual(@as(u8, 0), lean.ctorGetUint8(ctor, 0));
    try testing.expectEqual(@as(u8, 255), lean.ctorGetUint8(ctor, 1));
    try testing.expectEqual(@as(u8, 127), lean.ctorGetUint8(ctor, 2));
    try testing.expectEqual(@as(u8, 128), lean.ctorGetUint8(ctor, 3));
}

// ============================================================================
// IO Result Tests
// ============================================================================

test "ioResultMkOk creates success result" {
    const value = lean.boxUsize(42);
    const result = lean.ioResultMkOk(value) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(result);

    try testing.expect(lean.ioResultIsOk(result));
    try testing.expect(!lean.ioResultIsError(result));

    const retrieved = lean.ioResultGetValue(result);
    try testing.expectEqual(@as(usize, 42), lean.unboxUsize(retrieved));
}

test "ioResultMkError creates error result" {
    const result = lean.ioResultMkError(lean.lean_mk_string("something failed")) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(result);

    try testing.expect(lean.ioResultIsError(result));
    try testing.expect(!lean.ioResultIsOk(result));
}

test "IO result has correct tag" {
    const ok_result = lean.ioResultMkOk(lean.boxUsize(1)) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ok_result);
    try testing.expectEqual(@as(u8, 0), lean.objectTag(ok_result));

    const err_result = lean.ioResultMkError(lean.lean_mk_string("error")) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(err_result);
    try testing.expectEqual(@as(u8, 1), lean.objectTag(err_result));
}

test "io: ioResultGetValue extraction" {
    const value = lean.boxUsize(12345);
    const result = lean.ioResultMkOk(value);
    defer lean.lean_dec_ref(result);

    try testing.expect(lean.ioResultIsOk(result));

    const extracted = lean.ioResultGetValue(result);
    try testing.expectEqual(@as(usize, 12345), lean.unboxUsize(extracted));
}

test "io: error result with string message" {
    const err_msg = lean.lean_mk_string_from_bytes("operation failed", 16);
    const result = lean.ioResultMkError(err_msg);
    defer lean.lean_dec_ref(result);

    try testing.expect(lean.ioResultIsError(result));
    try testing.expect(!lean.ioResultIsOk(result));

    // Extract error message
    const extracted = lean.ioResultGetValue(result);
    try testing.expect(lean.isString(extracted));
}

test "io: success with complex object" {
    const obj = lean.allocCtor(1, 2, 0) orelse return error.AllocationFailed;
    lean.ctorSet(obj, 0, lean.boxUsize(42));
    lean.ctorSet(obj, 1, lean.boxUsize(84));

    const result = lean.ioResultMkOk(obj);
    defer lean.lean_dec_ref(result);

    try testing.expect(lean.ioResultIsOk(result));

    const extracted = lean.ioResultGetValue(result);
    try testing.expect(lean.isCtor(extracted));
    try testing.expectEqual(@as(usize, 42), lean.unboxUsize(lean.ctorGet(extracted, 0)));
}

test "io: result tag correctness" {
    const ok_result = lean.ioResultMkOk(lean.boxUsize(1));
    defer lean.lean_dec_ref(ok_result);

    const err_result = lean.ioResultMkError(lean.boxUsize(2));
    defer lean.lean_dec_ref(err_result);

    // Tag 0 = ok, Tag 1 = error
    try testing.expectEqual(@as(u8, 0), lean.objectTag(ok_result));
    try testing.expectEqual(@as(u8, 1), lean.objectTag(err_result));
}

test "io: round-trip through result" {
    // Pack complex data in result
    const arr = lean.allocArray(2) orelse return error.AllocationFailed;
    lean.arraySet(arr, 0, lean.boxUsize(99));
    lean.arraySet(arr, 1, lean.boxUsize(88));

    const result = lean.ioResultMkOk(arr);
    defer lean.lean_dec_ref(result);

    try testing.expect(lean.ioResultIsOk(result));
    const extracted = lean.ioResultGetValue(result);

    try testing.expect(lean.isArray(extracted));
    try testing.expectEqual(@as(usize, 99), lean.unboxUsize(lean.arrayGet(extracted, 0)));
}

test "io: nested results" {
    // Create Result (Result A)
    const inner_value = lean.boxUsize(42);
    const inner_result = lean.ioResultMkOk(inner_value);

    const outer_result = lean.ioResultMkOk(inner_result);
    defer lean.lean_dec_ref(outer_result);

    // Unwrap outer
    try testing.expect(lean.ioResultIsOk(outer_result));
    const middle = lean.ioResultGetValue(outer_result);

    // Unwrap inner
    try testing.expect(lean.ioResultIsOk(middle));
    const final_value = lean.ioResultGetValue(middle);

    try testing.expectEqual(@as(usize, 42), lean.unboxUsize(final_value));
}

test "io: error propagation pattern" {
    // Simulate error handling chain
    const errors = [_][]const u8{
        "file not found",
        "permission denied",
        "disk full",
    };

    for (errors) |err_str| {
        const msg = lean.lean_mk_string_from_bytes(err_str.ptr, err_str.len);
        const result = lean.ioResultMkError(msg);
        defer lean.lean_dec_ref(result);

        try testing.expect(lean.ioResultIsError(result));

        const extracted = lean.ioResultGetValue(result);
        try testing.expect(lean.isString(extracted));
    }
}

// ============================================================================
// Thunk Tests
// ============================================================================

test "thunk: pure thunk creation and access" {
    const value = lean.boxUsize(42);
    const thunk = lean.lean_thunk_pure(value) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(thunk);

    // Verify it's a thunk
    try testing.expect(lean.isThunk(thunk));
    try testing.expect(!lean.isTask(thunk));
    try testing.expect(!lean.isClosure(thunk));

    // Get value (borrowed)
    const retrieved = lean.thunkGet(thunk);
    try testing.expect(lean.isScalar(retrieved));
    try testing.expectEqual(@as(usize, 42), lean.unboxUsize(retrieved));
}

test "thunk: get_own transfers ownership" {
    const value = lean.boxUsize(100);
    const thunk = lean.lean_thunk_pure(value) orelse return error.AllocationFailed;

    // Get with ownership (increments ref on value)
    const owned = lean.lean_thunk_get_own(thunk);
    defer lean.lean_dec_ref(owned);

    // Original thunk still valid
    try testing.expect(lean.isThunk(thunk));

    // Can still access value through thunk
    const borrowed = lean.thunkGet(thunk);
    try testing.expectEqual(@as(usize, 100), lean.unboxUsize(borrowed));

    // Clean up thunk
    lean.lean_dec_ref(thunk);
}

test "thunk: multiple accesses return same value" {
    const value = lean.allocCtor(0, 0, 0) orelse return error.AllocationFailed;
    const thunk = lean.lean_thunk_pure(value) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(thunk);

    // Multiple gets should return same cached value
    const v1 = lean.thunkGet(thunk);
    const v2 = lean.thunkGet(thunk);
    const v3 = lean.thunkGet(thunk);

    try testing.expect(v1 == v2);
    try testing.expect(v2 == v3);
}

// ============================================================================
// Task Tests
// ============================================================================

test "task: type checking" {
    // We can't easily test task execution without the full Lean IO system,
    // but we can test type checking on mock task objects.
    // Tasks are created via lean_task_spawn_core which requires full runtime init,
    // so we'll just verify the API functions exist and have correct signatures.

    // Just verify functions are accessible (compilation test)
    _ = lean.lean_task_spawn_core;
    _ = lean.lean_task_get;
    _ = lean.lean_task_get_own;
    _ = lean.lean_task_map_core;
    _ = lean.lean_task_bind_core;
    _ = lean.taskSpawn;
    _ = lean.taskMap;
    _ = lean.taskBind;
}

// ============================================================================
// Reference Tests
// ============================================================================

test "ref: basic get and set" {
    // Create a ref object manually (refs are normally created by ST runtime)
    const ref = lean.lean_alloc_object(@sizeOf(lean.RefObject)) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ref);

    // Initialize header
    const header: *lean.ObjectHeader = @ptrCast(@alignCast(ref));
    header.m_tag = lean.Tag.ref;
    header.m_other = 0;

    // Set initial value
    const initial = lean.boxUsize(10);
    lean.refSet(ref, initial);

    // Get value
    const retrieved = lean.refGet(ref);
    try testing.expect(lean.isScalar(retrieved));
    try testing.expectEqual(@as(usize, 10), lean.unboxUsize(retrieved));
}

test "ref: set updates value" {
    const ref = lean.lean_alloc_object(@sizeOf(lean.RefObject)) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ref);

    const header: *lean.ObjectHeader = @ptrCast(@alignCast(ref));
    header.m_tag = lean.Tag.ref;
    header.m_other = 0;

    // Set initial value
    lean.refSet(ref, lean.boxUsize(100));

    // Verify initial
    const v1 = lean.refGet(ref);
    try testing.expectEqual(@as(usize, 100), lean.unboxUsize(v1));

    // Update value
    lean.refSet(ref, lean.boxUsize(200));

    // Verify updated
    const v2 = lean.refGet(ref);
    try testing.expectEqual(@as(usize, 200), lean.unboxUsize(v2));

    // Update again
    lean.refSet(ref, lean.boxUsize(300));
    const v3 = lean.refGet(ref);
    try testing.expectEqual(@as(usize, 300), lean.unboxUsize(v3));
}

test "ref: set decrements old value refcount" {
    const ref = lean.lean_alloc_object(@sizeOf(lean.RefObject)) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ref);

    const header: *lean.ObjectHeader = @ptrCast(@alignCast(ref));
    header.m_tag = lean.Tag.ref;
    header.m_other = 0;

    // Create an object to track
    const obj1 = lean.allocCtor(0, 0, 0) orelse return error.AllocationFailed;
    lean.lean_inc_ref(obj1); // Keep alive for test

    // Set as ref value
    lean.refSet(ref, obj1);
    try testing.expectEqual(@as(i32, 2), lean.objectRc(obj1));

    // Create another object
    const obj2 = lean.allocCtor(0, 0, 0) orelse return error.AllocationFailed;
    lean.lean_inc_ref(obj2); // Keep alive

    // Replace ref value (should dec_ref obj1)
    lean.refSet(ref, obj2);

    // obj1 should have rc=1, obj2 should have rc=2
    try testing.expectEqual(@as(i32, 1), lean.objectRc(obj1));
    try testing.expectEqual(@as(i32, 2), lean.objectRc(obj2));

    // Clean up
    lean.lean_dec_ref(obj1);
    lean.lean_dec_ref(obj2);
}

test "ref: object storage and retrieval" {
    const ref = lean.lean_alloc_object(@sizeOf(lean.RefObject)) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ref);

    const header: *lean.ObjectHeader = @ptrCast(@alignCast(ref));
    header.m_tag = lean.Tag.ref;
    header.m_other = 0;

    // Store a complex constructor
    const ctor = lean.allocCtor(5, 2, 8) orelse return error.AllocationFailed;
    lean.ctorSetUint64(ctor, 0, 12345);

    lean.refSet(ref, ctor);

    // Retrieve and verify
    const retrieved = lean.refGet(ref);
    try testing.expect(!lean.isScalar(retrieved));
    try testing.expectEqual(@as(u8, 5), lean.objectTag(retrieved));
    try testing.expectEqual(@as(u64, 12345), lean.ctorGetUint64(retrieved, 0));
}

test "ref: null as valid reference value" {
    const ref = lean.lean_alloc_object(@sizeOf(lean.RefObject)) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ref);

    const header: *lean.ObjectHeader = @ptrCast(@alignCast(ref));
    header.m_tag = lean.Tag.ref;
    header.m_other = 0;

    // Set null value (valid for optional references)
    lean.refSet(ref, null);

    // Get should return null
    const retrieved = lean.refGet(ref);
    try testing.expect(retrieved == null);

    // Can set non-null after null
    lean.refSet(ref, lean.boxUsize(42));
    const v = lean.refGet(ref);
    try testing.expectEqual(@as(usize, 42), lean.unboxUsize(v));
}

// ============================================================================
// Additional Tests
// ============================================================================

test "allocCtor pre-initializes object fields to boxed(0)" {
    // Allocate constructor with 3 object fields
    const obj = lean.allocCtor(0, 3, 0) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(obj);

    // Verify all fields are initialized to boxed(0), not null
    const field0 = lean.ctorGet(obj, 0);
    const field1 = lean.ctorGet(obj, 1);
    const field2 = lean.ctorGet(obj, 2);

    // Check they're tagged pointers (odd address = scalar)
    try testing.expectEqual(@as(usize, 1), @intFromPtr(field0) & 1);
    try testing.expectEqual(@as(usize, 1), @intFromPtr(field1) & 1);
    try testing.expectEqual(@as(usize, 1), @intFromPtr(field2) & 1);

    // Verify they decode to 0
    try testing.expectEqual(@as(usize, 0), lean.unboxUsize(field0));
    try testing.expectEqual(@as(usize, 0), lean.unboxUsize(field1));
    try testing.expectEqual(@as(usize, 0), lean.unboxUsize(field2));
}

test "mkArrayWithSize creates array with correct size" {
    // mkArrayWithSize sets size but does NOT initialize elements
    // We must populate all elements before freeing
    const arr = lean.mkArrayWithSize(5, 5) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(arr);

    // Populate all elements before cleanup
    var i: usize = 0;
    while (i < 5) : (i += 1) {
        lean.arraySet(arr, i, lean.boxUsize(i));
    }

    // Verify size was set correctly
    try testing.expectEqual(@as(usize, 5), lean.arraySize(arr));
}
