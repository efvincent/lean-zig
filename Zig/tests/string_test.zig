const std = @import("std");
const testing = std.testing;
const lean = @import("../lean.zig");

// ============================================================================
// String Tests
// ============================================================================

test "create string from C string" {
    const str = lean.lean_mk_string("Hello");
    defer lean.lean_dec_ref(str);

    const size = lean.stringSize(str);
    try testing.expectEqual(@as(usize, 6), size); // 5 chars + null terminator
}

test "create string from bytes" {
    const str = lean.lean_mk_string_from_bytes("Test", 4);
    defer lean.lean_dec_ref(str);

    const cstr = lean.stringCstr(str);
    const len = lean.stringSize(str) - 1;
    try testing.expectEqualStrings("Test", cstr[0..len]);
}

test "string cstr returns valid pointer" {
    const str = lean.lean_mk_string_from_bytes("Example", 7);
    defer lean.lean_dec_ref(str);

    const cstr = lean.stringCstr(str);
    const len = lean.stringSize(str) - 1;
    try testing.expectEqualStrings("Example", cstr[0..len]);
}

test "string length counts unicode codepoints" {
    const str = lean.lean_mk_string("Hello");
    defer lean.lean_dec_ref(str);

    const len = lean.stringLen(str);
    try testing.expectEqual(@as(usize, 5), len);
}

test "empty string has size 1 (null terminator)" {
    const str = lean.lean_mk_string_from_bytes("", 0);
    defer lean.lean_dec_ref(str);

    try testing.expectEqual(@as(usize, 1), lean.stringSize(str));
    try testing.expectEqual(@as(usize, 0), lean.stringLen(str));
}

test "string has correct tag" {
    const str = lean.lean_mk_string("test");
    defer lean.lean_dec_ref(str);

    try testing.expectEqual(lean.Tag.string, lean.objectTag(str));
}

test "string: equality comparison" {
    const str1 = lean.lean_mk_string("hello");
    defer lean.lean_dec_ref(str1);
    const str2 = lean.lean_mk_string("hello");
    defer lean.lean_dec_ref(str2);
    const str3 = lean.lean_mk_string("world");
    defer lean.lean_dec_ref(str3);

    try testing.expect(lean.stringEq(str1, str2));
    try testing.expect(!lean.stringEq(str1, str3));
}

test "string: inequality comparison" {
    const str1 = lean.lean_mk_string("hello");
    defer lean.lean_dec_ref(str1);
    const str2 = lean.lean_mk_string("hello");
    defer lean.lean_dec_ref(str2);
    const str3 = lean.lean_mk_string("world");
    defer lean.lean_dec_ref(str3);

    try testing.expect(!lean.stringNe(str1, str2));
    try testing.expect(lean.stringNe(str1, str3));
}

test "string: lexicographic less-than" {
    const tests = [_]struct { a: [:0]const u8, b: [:0]const u8, expect_lt: bool }{
        .{ .a = "a", .b = "b", .expect_lt = true },
        .{ .a = "abc", .b = "abd", .expect_lt = true },
        .{ .a = "abc", .b = "abc", .expect_lt = false },
        .{ .a = "abd", .b = "abc", .expect_lt = false },
        .{ .a = "", .b = "a", .expect_lt = true },
        .{ .a = "z", .b = "a", .expect_lt = false },
    };

    for (tests) |t| {
        const str1 = lean.lean_mk_string(t.a.ptr);
        defer lean.lean_dec_ref(str1);
        const str2 = lean.lean_mk_string(t.b.ptr);
        defer lean.lean_dec_ref(str2);

        try testing.expectEqual(t.expect_lt, lean.stringLt(str1, str2));
    }
}

test "string: capacity >= size invariant" {
    const str = lean.lean_mk_string("test");
    defer lean.lean_dec_ref(str);

    const cap = lean.stringCapacity(str);
    const size = lean.stringSize(str);

    try testing.expect(cap >= size);
}

test "string: getStringByteFast accesses individual bytes" {
    const str = lean.lean_mk_string("ABC");
    defer lean.lean_dec_ref(str);

    try testing.expectEqual(@as(u8, 'A'), lean.stringGetByteFast(str, 0));
    try testing.expectEqual(@as(u8, 'B'), lean.stringGetByteFast(str, 1));
    try testing.expectEqual(@as(u8, 'C'), lean.stringGetByteFast(str, 2));
    try testing.expectEqual(@as(u8, 0), lean.stringGetByteFast(str, 3)); // null terminator
}

test "string: UTF-8 multi-byte character handling" {
    const utf8_str = "Hello world"; // ASCII first
    const str = lean.lean_mk_string(utf8_str);
    defer lean.lean_dec_ref(str);

    // Byte count includes all UTF-8 bytes + null
    const byte_size = lean.stringSize(str);
    try testing.expectEqual(@as(usize, 12), byte_size); // 11 chars + null
}

test "string: empty string properties" {
    const str = lean.lean_mk_string("");
    defer lean.lean_dec_ref(str);

    try testing.expectEqual(@as(usize, 1), lean.stringSize(str)); // Just null terminator
    try testing.expectEqual(@as(usize, 0), lean.stringLen(str)); // Zero code points
}

test "string: comparison with empty strings" {
    const empty = lean.lean_mk_string("");
    defer lean.lean_dec_ref(empty);
    const nonempty = lean.lean_mk_string("a");
    defer lean.lean_dec_ref(nonempty);

    try testing.expect(!lean.stringEq(empty, nonempty));
    try testing.expect(lean.stringNe(empty, nonempty));
    try testing.expect(lean.stringLt(empty, nonempty));
    try testing.expect(!lean.stringLt(nonempty, empty));
}
