//! Boxing and unboxing tests for Lean scalar types.
//!
//! Tests tagged pointer encoding, scalar round-trips, and edge cases.

const std = @import("std");
const testing = std.testing;
const lean = @import("../lean.zig");

// ============================================================================
// Basic Type Tests
// ============================================================================

test "tagged pointer encoding produces odd address" {
    // Tagged pointers have the low bit set (odd address)
    // We test the encoding math without going through the pointer type
    const value: usize = 42;
    const encoded = (value << 1) | 1;
    try testing.expect(encoded & 1 == 1); // Odd address
    try testing.expectEqual(value, encoded >> 1); // Decodes correctly
}

test "tagged pointer zero encodes to 1" {
    // 0 encodes to (0 << 1) | 1 = 1
    const encoded = (0 << 1) | 1;
    try testing.expectEqual(@as(usize, 1), encoded);
}

// ============================================================================
// Boxing/Unboxing Tests
// ============================================================================

test "box and unbox usize" {
    const original: usize = 42;
    const boxed = lean.boxUsize(original);
    const unboxed = lean.unboxUsize(boxed);
    try testing.expectEqual(original, unboxed);
}

test "box large usize values" {
    // Test edge cases for tagged pointer encoding
    const maxTagged: usize = (1 << 62) - 1;
    const boxed = lean.boxUsize(maxTagged);
    const unboxed = lean.unboxUsize(boxed);
    try testing.expectEqual(maxTagged, unboxed);
}

test "boxed usize has tagged pointer format" {
    const original: usize = 123;
    const boxed = lean.boxUsize(original);
    const ptr = @intFromPtr(boxed);

    // Must be odd (tagged pointer)
    try testing.expect(ptr & 1 == 1);

    // Must decode correctly
    try testing.expectEqual(original, ptr >> 1);
}
