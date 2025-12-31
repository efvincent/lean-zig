const std = @import("std");
const testing = std.testing;
const lean = @import("../lean.zig");

// ============================================================================
// Scalar Array Tests
// ============================================================================

test "sarray: isSArray type detection" {
    // This test verifies that isSArray correctly identifies scalar arrays
    // by checking the tag field. We can test this with a manually created
    // header structure.

    // Create a minimal object with sarray tag
    const size = @sizeOf(lean.ScalarArrayObject);
    const mem = std.testing.allocator.alloc(u8, size) catch unreachable;
    defer std.testing.allocator.free(mem);

    const obj: *lean.ScalarArrayObject = @ptrCast(@alignCast(mem.ptr));
    obj.m_header.m_tag = lean.Tag.sarray;
    obj.m_header.m_rc = 1;
    obj.m_size = 0;
    obj.m_capacity = 0;
    obj.m_elem_size = 1;

    const as_obj: lean.obj_arg = @ptrCast(obj);
    try testing.expect(lean.isSArray(as_obj));
    try testing.expect(!lean.isArray(as_obj));
    try testing.expect(!lean.isString(as_obj));
}

test "sarray: accessor functions with mock structure" {
    // Test that our accessor functions correctly read the fields
    const size = @sizeOf(lean.ScalarArrayObject) + 16; // + some data
    const mem = std.testing.allocator.alloc(u8, size) catch unreachable;
    defer std.testing.allocator.free(mem);

    const obj: *lean.ScalarArrayObject = @ptrCast(@alignCast(mem.ptr));
    obj.m_header.m_tag = lean.Tag.sarray;
    obj.m_header.m_rc = 1;
    obj.m_size = 10;
    obj.m_capacity = 20;
    obj.m_elem_size = 1; // ByteArray

    const as_obj: lean.obj_arg = @ptrCast(obj);

    try testing.expectEqual(@as(usize, 10), lean.sArraySize(as_obj));
    try testing.expectEqual(@as(usize, 20), lean.sArrayCapacity(as_obj));
    try testing.expectEqual(@as(usize, 1), lean.sArrayElemSize(as_obj));
}

test "sarray: data pointer calculation" {
    // Verify that sArrayCptr returns pointer immediately after header
    const total_size = @sizeOf(lean.ScalarArrayObject) + 256; // + data buffer
    const mem = std.testing.allocator.alloc(u8, total_size) catch unreachable;
    defer std.testing.allocator.free(mem);

    // Initialize with known pattern
    for (mem, 0..) |*byte, i| {
        byte.* = @intCast(i & 0xFF);
    }

    const obj: *lean.ScalarArrayObject = @ptrCast(@alignCast(mem.ptr));
    obj.m_header.m_tag = lean.Tag.sarray;
    obj.m_header.m_rc = 1;
    obj.m_size = 256;
    obj.m_capacity = 256;
    obj.m_elem_size = 1;

    const as_obj: lean.obj_arg = @ptrCast(obj);
    const data = lean.sArrayCptr(as_obj);

    // Data should point to memory right after the header
    const header_end = @sizeOf(lean.ScalarArrayObject);
    try testing.expectEqual(mem[header_end], data[0]);
}

test "sarray: setSize mutation" {
    const size = @sizeOf(lean.ScalarArrayObject);
    const mem = std.testing.allocator.alloc(u8, size) catch unreachable;
    defer std.testing.allocator.free(mem);

    const obj: *lean.ScalarArrayObject = @ptrCast(@alignCast(mem.ptr));
    obj.m_header.m_tag = lean.Tag.sarray;
    obj.m_header.m_rc = 1;
    obj.m_size = 10;
    obj.m_capacity = 20;
    obj.m_elem_size = 1;

    const as_obj: lean.obj_arg = @ptrCast(obj);

    lean.sArraySetSize(as_obj, 15);
    try testing.expectEqual(@as(usize, 15), lean.sArraySize(as_obj));
}

test "sarray: capacity >= size invariant" {
    const size = @sizeOf(lean.ScalarArrayObject);
    const mem = std.testing.allocator.alloc(u8, size) catch unreachable;
    defer std.testing.allocator.free(mem);

    const obj: *lean.ScalarArrayObject = @ptrCast(@alignCast(mem.ptr));
    obj.m_header.m_tag = lean.Tag.sarray;
    obj.m_header.m_rc = 1;
    obj.m_size = 10;
    obj.m_capacity = 20;
    obj.m_elem_size = 1;

    const as_obj: lean.obj_arg = @ptrCast(obj);

    const cap = lean.sArrayCapacity(as_obj);
    const sz = lean.sArraySize(as_obj);
    try testing.expect(cap >= sz);
}

test "sarray: different element sizes" {
    // Test element size field for different scalar array types
    const test_cases = [_]struct { elem_size: usize, array_type: []const u8 }{
        .{ .elem_size = 1, .array_type = "ByteArray" },
        .{ .elem_size = 4, .array_type = "Float32Array" },
        .{ .elem_size = 8, .array_type = "Float64Array" },
    };

    for (test_cases) |tc| {
        const size = @sizeOf(lean.ScalarArrayObject);
        const mem = std.testing.allocator.alloc(u8, size) catch unreachable;
        defer std.testing.allocator.free(mem);

        const obj: *lean.ScalarArrayObject = @ptrCast(@alignCast(mem.ptr));
        obj.m_header.m_tag = lean.Tag.sarray;
        obj.m_header.m_rc = 1;
        obj.m_size = 0;
        obj.m_capacity = 0;
        obj.m_elem_size = tc.elem_size;

        const as_obj: lean.obj_arg = @ptrCast(obj);
        try testing.expectEqual(tc.elem_size, lean.sArrayElemSize(as_obj));
    }
}

test "sarray: simulate byte array access pattern" {
    // Simulate how you'd work with a ByteArray
    const data_size: usize = 100;
    const total_size = @sizeOf(lean.ScalarArrayObject) + data_size;
    const mem = std.testing.allocator.alloc(u8, total_size) catch unreachable;
    defer std.testing.allocator.free(mem);

    const obj: *lean.ScalarArrayObject = @ptrCast(@alignCast(mem.ptr));
    obj.m_header.m_tag = lean.Tag.sarray;
    obj.m_header.m_rc = 1;
    obj.m_size = data_size;
    obj.m_capacity = data_size;
    obj.m_elem_size = 1;

    const as_obj: lean.obj_arg = @ptrCast(obj);

    // Write pattern to byte array
    const data = lean.sArrayCptr(as_obj);
    const bytes: [*]u8 = @ptrCast(data);
    var i: usize = 0;
    while (i < data_size) : (i += 1) {
        bytes[i] = @intCast(i % 256);
    }

    // Read back and verify
    i = 0;
    while (i < data_size) : (i += 1) {
        try testing.expectEqual(@as(u8, @intCast(i % 256)), bytes[i]);
    }
}

test "sarray: simulate float array access pattern" {
    // Simulate how you'd work with a FloatArray (f64)
    const elem_count: usize = 10;
    const elem_size: usize = @sizeOf(f64);
    const data_size = elem_count * elem_size;
    const total_size = @sizeOf(lean.ScalarArrayObject) + data_size;
    const mem = std.testing.allocator.alloc(u8, total_size) catch unreachable;
    defer std.testing.allocator.free(mem);

    const obj: *lean.ScalarArrayObject = @ptrCast(@alignCast(mem.ptr));
    obj.m_header.m_tag = lean.Tag.sarray;
    obj.m_header.m_rc = 1;
    obj.m_size = elem_count;
    obj.m_capacity = elem_count;
    obj.m_elem_size = elem_size;

    const as_obj: lean.obj_arg = @ptrCast(obj);

    // Write floats
    const data = lean.sArrayCptr(as_obj);
    const floats: [*]f64 = @ptrCast(@alignCast(data));
    var i: usize = 0;
    while (i < elem_count) : (i += 1) {
        floats[i] = @as(f64, @floatFromInt(i)) * 1.5;
    }

    // Read back and verify
    i = 0;
    while (i < elem_count) : (i += 1) {
        const expected = @as(f64, @floatFromInt(i)) * 1.5;
        try testing.expectEqual(expected, floats[i]);
    }
}

test "sarray: empty scalar array" {
    const size = @sizeOf(lean.ScalarArrayObject);
    const mem = std.testing.allocator.alloc(u8, size) catch unreachable;
    defer std.testing.allocator.free(mem);

    const obj: *lean.ScalarArrayObject = @ptrCast(@alignCast(mem.ptr));
    obj.m_header.m_tag = lean.Tag.sarray;
    obj.m_header.m_rc = 1;
    obj.m_size = 0;
    obj.m_capacity = 0;
    obj.m_elem_size = 1;

    const as_obj: lean.obj_arg = @ptrCast(obj);

    try testing.expectEqual(@as(usize, 0), lean.sArraySize(as_obj));
    try testing.expect(lean.isSArray(as_obj));
}

test "sarray: distinguish from object array" {
    // Verify scalar arrays and object arrays are distinct
    const sarray_size = @sizeOf(lean.ScalarArrayObject);
    const sarray_mem = std.testing.allocator.alloc(u8, sarray_size) catch unreachable;
    defer std.testing.allocator.free(sarray_mem);

    const sarray_obj: *lean.ScalarArrayObject = @ptrCast(@alignCast(sarray_mem.ptr));
    sarray_obj.m_header.m_tag = lean.Tag.sarray;
    sarray_obj.m_header.m_rc = 1;
    sarray_obj.m_size = 0;
    sarray_obj.m_capacity = 0;
    sarray_obj.m_elem_size = 1;

    const array_size = @sizeOf(lean.ArrayObject);
    const array_mem = std.testing.allocator.alloc(u8, array_size) catch unreachable;
    defer std.testing.allocator.free(array_mem);

    const array_obj: *lean.ArrayObject = @ptrCast(@alignCast(array_mem.ptr));
    array_obj.m_header.m_tag = lean.Tag.array;
    array_obj.m_header.m_rc = 1;
    array_obj.m_size = 0;
    array_obj.m_capacity = 0;

    const sarray_ptr: lean.obj_arg = @ptrCast(sarray_obj);
    const array_ptr: lean.obj_arg = @ptrCast(array_obj);

    try testing.expect(lean.isSArray(sarray_ptr));
    try testing.expect(!lean.isArray(sarray_ptr));

    try testing.expect(lean.isArray(array_ptr));
    try testing.expect(!lean.isSArray(array_ptr));
}

test "sarray: performance baseline for byte access" {
    // Test that scalar array access is efficient
    const data_size: usize = 10000;
    const total_size = @sizeOf(lean.ScalarArrayObject) + data_size;
    const mem = std.testing.allocator.alloc(u8, total_size) catch unreachable;
    defer std.testing.allocator.free(mem);

    const obj: *lean.ScalarArrayObject = @ptrCast(@alignCast(mem.ptr));
    obj.m_header.m_tag = lean.Tag.sarray;
    obj.m_header.m_rc = 1;
    obj.m_size = data_size;
    obj.m_capacity = data_size;
    obj.m_elem_size = 1;

    const as_obj: lean.obj_arg = @ptrCast(obj);

    var timer = std.time.Timer.start() catch unreachable;

    const iterations = 1_000_000;
    const data = lean.sArrayCptr(as_obj);
    const bytes: [*]u8 = @ptrCast(data);

    var i: usize = 0;
    var sum: u64 = 0;
    while (i < iterations) : (i += 1) {
        sum +%= bytes[i % data_size];
    }

    const elapsed_ns = timer.read();
    const ns_per_access = elapsed_ns / iterations;

    std.debug.print("\nScalar array access: {d}ns per operation (sum={d})\n", .{ ns_per_access, sum });

    // Should be very fast - just pointer arithmetic + load
    // Higher threshold due to cache effects with large iteration count
    const is_ci = std.process.hasEnvVarConstant("CI") or std.process.hasEnvVarConstant("GITHUB_ACTIONS");
    const threshold: u64 = if (is_ci) 25 else 15;
    try testing.expect(ns_per_access < threshold);
}
