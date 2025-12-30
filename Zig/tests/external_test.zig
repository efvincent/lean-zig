//! External objects tests
//!
//! External objects require full Lean runtime initialization for class registration.
//! These tests verify the API structure and basic object manipulation without
//! requiring runtime init (similar to task and ref tests).

const std = @import("std");
const testing = std.testing;
const lean = @import("../lean.zig");

// ============================================================================
// External Objects Tests
// ============================================================================

test "external: API existence check" {
    // External objects require the full Lean runtime to be initialized for class
    // registration via lean_register_external_class. This test just verifies
    // the API functions exist and have correct signatures.

    _ = lean.lean_register_external_class;
    _ = lean.registerExternalClass;
    _ = lean.allocExternal;
    _ = lean.getExternalData;
    _ = lean.getExternalClass;
    _ = lean.setExternalData;
    _ = lean.isExternal;
}

const TestData = struct {
    value: usize,
    name: [32]u8,
};

test "external: manual allocation without registration" {
    // We can manually create external object structure for testing,
    // bypassing runtime registration (like ref tests do).
    // This tests the object layout and data access without full runtime.
    
    var data = TestData{ .value = 42, .name = undefined };
    @memcpy(data.name[0..5], "hello");

    // Manually create external object
    const ext = lean.lean_alloc_object(@sizeOf(lean.ExternalObject)) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ext);

    // Initialize header
    const header: *lean.ObjectHeader = @ptrCast(@alignCast(ext));
    header.m_rc = 1;
    header.m_tag = lean.Tag.external;
    header.m_other = 0;
    header.m_cs_sz = @sizeOf(lean.ExternalObject);

    // Initialize external-specific fields
    const ext_obj: *lean.ExternalObject = @ptrCast(@alignCast(ext));
    ext_obj.m_data = &data;
    // m_class would normally be set by registerExternalClass, leave undefined for test

    // Test type checking
    try testing.expect(lean.isExternal(ext));
    try testing.expect(!lean.isScalar(ext));
    try testing.expectEqual(@as(i32, 1), lean.objectRc(ext));

    // Test data retrieval
    const retrieved: *TestData = @ptrCast(@alignCast(lean.getExternalData(ext)));
    try testing.expectEqual(@as(usize, 42), retrieved.value);
    try testing.expectEqualSlices(u8, "hello", retrieved.name[0..5]);
}

test "external: data pointer storage and retrieval" {
    // Test that we can store and retrieve different data types
    var int_data: u64 = 0xDEADBEEF;
    
    const ext = lean.lean_alloc_object(@sizeOf(lean.ExternalObject)) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ext);

    const header: *lean.ObjectHeader = @ptrCast(@alignCast(ext));
    header.m_tag = lean.Tag.external;
    header.m_other = 0;

    const ext_obj: *lean.ExternalObject = @ptrCast(@alignCast(ext));
    ext_obj.m_data = &int_data;

    const retrieved: *u64 = @ptrCast(@alignCast(lean.getExternalData(ext)));
    try testing.expectEqual(@as(u64, 0xDEADBEEF), retrieved.*);
}

test "external: exclusive vs shared data update" {
    // Test that setExternalData behaves correctly for exclusive/shared objects
    var old_data: usize = 1;
    var new_data: usize = 2;
    
    const ext = lean.lean_alloc_object(@sizeOf(lean.ExternalObject)) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ext);

    const header: *lean.ObjectHeader = @ptrCast(@alignCast(ext));
    header.m_rc = 1;
    header.m_tag = lean.Tag.external;
    header.m_other = 0;
    header.m_cs_sz = @sizeOf(lean.ExternalObject);

    const ext_obj: *lean.ExternalObject = @ptrCast(@alignCast(ext));
    ext_obj.m_data = &old_data;

    try testing.expect(lean.isExclusive(ext));

    // Update data (exclusive - in-place)
    const updated = lean.setExternalData(ext, &new_data);
    try testing.expectEqual(ext, updated);

    const retrieved: *usize = @ptrCast(@alignCast(lean.getExternalData(updated.?)));
    try testing.expectEqual(@as(usize, 2), retrieved.*);
}

test "external: shared object creates copy on data update" {
    var old_data: usize = 1;
    var new_data: usize = 2;
    
    const ext = lean.lean_alloc_object(@sizeOf(lean.ExternalObject)) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ext);

    const header: *lean.ObjectHeader = @ptrCast(@alignCast(ext));
    header.m_rc = 1;
    header.m_tag = lean.Tag.external;
    header.m_other = 0;
    header.m_cs_sz = @sizeOf(lean.ExternalObject);

    const ext_obj: *lean.ExternalObject = @ptrCast(@alignCast(ext));
    ext_obj.m_data = &old_data;

    // Make shared
    lean.lean_inc_ref(ext);
    try testing.expect(lean.isShared(ext));

    // Update data (shared - creates copy)
    const updated = lean.setExternalData(ext, &new_data);
    try testing.expect(updated != ext);

    // Original unchanged
    const orig_data: *usize = @ptrCast(@alignCast(lean.getExternalData(ext)));
    try testing.expectEqual(@as(usize, 1), orig_data.*);

    // Updated has new data
    const new_retrieved: *usize = @ptrCast(@alignCast(lean.getExternalData(updated.?)));
    try testing.expectEqual(@as(usize, 2), new_retrieved.*);

    // Cleanup both
    lean.lean_dec_ref(ext); // Remove the inc_ref
    lean.lean_dec_ref(updated.?);
}

test "external: used in constructor" {
    var data = TestData{ .value = 42, .name = undefined };
    @memcpy(data.name[0..5], "world");
    
    // Manually create external object
    const ext = lean.lean_alloc_object(@sizeOf(lean.ExternalObject)) orelse return error.AllocationFailed;
    const header: *lean.ObjectHeader = @ptrCast(@alignCast(ext));
    header.m_rc = 1;
    header.m_tag = lean.Tag.external;
    header.m_other = 0;
    header.m_cs_sz = @sizeOf(lean.ExternalObject);
    const ext_obj: *lean.ExternalObject = @ptrCast(@alignCast(ext));
    ext_obj.m_data = &data;

    // Create Some(ext)
    const some = lean.allocCtor(1, 1, 0) orelse {
        lean.lean_dec_ref(ext);
        return error.AllocationFailed;
    };
    defer lean.lean_dec_ref(some);

    lean.ctorSet(some, 0, ext);

    // Retrieve and verify
    const retrieved_ext = lean.ctorGet(some, 0);
    try testing.expect(lean.isExternal(retrieved_ext));

    const retrieved_data: *TestData = @ptrCast(@alignCast(lean.getExternalData(retrieved_ext)));
    try testing.expectEqual(@as(usize, 42), retrieved_data.value);
    try testing.expectEqualSlices(u8, "world", retrieved_data.name[0..5]);
}

test "external: used in array" {
    var data1 = TestData{ .value = 1, .name = undefined };
    var data2 = TestData{ .value = 2, .name = undefined };
    
    // Manually create external objects
    const ext1 = lean.lean_alloc_object(@sizeOf(lean.ExternalObject)) orelse return error.AllocationFailed;
    const header1: *lean.ObjectHeader = @ptrCast(@alignCast(ext1));
    header1.m_rc = 1;
    header1.m_tag = lean.Tag.external;
    header1.m_other = 0;
    header1.m_cs_sz = @sizeOf(lean.ExternalObject);
    const ext_obj1: *lean.ExternalObject = @ptrCast(@alignCast(ext1));
    ext_obj1.m_data = &data1;

    const ext2 = lean.lean_alloc_object(@sizeOf(lean.ExternalObject)) orelse return error.AllocationFailed;
    const header2: *lean.ObjectHeader = @ptrCast(@alignCast(ext2));
    header2.m_rc = 1;
    header2.m_tag = lean.Tag.external;
    header2.m_other = 0;
    header2.m_cs_sz = @sizeOf(lean.ExternalObject);
    const ext_obj2: *lean.ExternalObject = @ptrCast(@alignCast(ext2));
    ext_obj2.m_data = &data2;

    const arr = lean.allocArray(2) orelse {
        lean.lean_dec_ref(ext1);
        lean.lean_dec_ref(ext2);
        return error.AllocationFailed;
    };
    defer lean.lean_dec_ref(arr);

    lean.arraySet(arr, 0, ext1);
    lean.arraySet(arr, 1, ext2);

    // Verify
    const retrieved1 = lean.arrayUget(arr, 0);
    const retrieved2 = lean.arrayUget(arr, 1);

    try testing.expect(lean.isExternal(retrieved1));
    try testing.expect(lean.isExternal(retrieved2));

    const data_ptr1: *TestData = @ptrCast(@alignCast(lean.getExternalData(retrieved1)));
    const data_ptr2: *TestData = @ptrCast(@alignCast(lean.getExternalData(retrieved2)));

    try testing.expectEqual(@as(usize, 1), data_ptr1.value);
    try testing.expectEqual(@as(usize, 2), data_ptr2.value);
}

test "external: type checking" {
    var data = TestData{ .value = 1, .name = undefined };
    
    const ext = lean.lean_alloc_object(@sizeOf(lean.ExternalObject)) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ext);

    const header: *lean.ObjectHeader = @ptrCast(@alignCast(ext));
    header.m_tag = lean.Tag.external;
    const ext_obj: *lean.ExternalObject = @ptrCast(@alignCast(ext));
    ext_obj.m_data = &data;

    // Should be external
    try testing.expect(lean.isExternal(ext));
    
    // Should not be other types
    try testing.expect(!lean.isScalar(ext));
    try testing.expect(!lean.isString(ext));
    try testing.expect(!lean.isArray(ext));
    try testing.expect(!lean.isClosure(ext));
    try testing.expect(!lean.isThunk(ext));
    try testing.expect(!lean.isTask(ext));
    try testing.expect(!lean.isRef(ext));
}

test "external: reference counting" {
    var data = TestData{ .value = 42, .name = undefined };
    
    const ext = lean.lean_alloc_object(@sizeOf(lean.ExternalObject)) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(ext);

    const header: *lean.ObjectHeader = @ptrCast(@alignCast(ext));
    header.m_rc = 1;
    header.m_tag = lean.Tag.external;
    header.m_other = 0;
    header.m_cs_sz = @sizeOf(lean.ExternalObject);
    const ext_obj: *lean.ExternalObject = @ptrCast(@alignCast(ext));
    ext_obj.m_data = &data;

    try testing.expectEqual(@as(i32, 1), lean.objectRc(ext));
    try testing.expect(lean.isExclusive(ext));

    lean.lean_inc_ref(ext);
    try testing.expectEqual(@as(i32, 2), lean.objectRc(ext));
    try testing.expect(lean.isShared(ext));

    lean.lean_dec_ref(ext);
    try testing.expectEqual(@as(i32, 1), lean.objectRc(ext));
    try testing.expect(lean.isExclusive(ext));
}
