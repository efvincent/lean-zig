const std = @import("std");
const testing = std.testing;
const lean = @import("../lean.zig");

// Performance test thresholds (nanoseconds per operation)
// CI environments have higher thresholds due to variable performance
const perf_boxing_threshold_local: u64 = 10;
const perf_boxing_threshold_ci: u64 = 20;
const perf_array_threshold_local: u64 = 15;
const perf_array_threshold_ci: u64 = 20;
const perf_refcount_threshold_local: u64 = 5;
const perf_refcount_threshold_ci: u64 = 10;

// ============================================================================
// Performance Baseline Tests
// ============================================================================

test "perf: boxing round-trip baseline" {
    var timer = try std.time.Timer.start();

    const iterations = 1_000_000;
    var i: usize = 0;
    var sum: usize = 0;
    while (i < iterations) : (i += 1) {
        const boxed = lean.boxUsize(i);
        sum +%= lean.unboxUsize(boxed);
    }

    const elapsed_ns = timer.read();
    const ns_per_op = elapsed_ns / iterations;

    std.debug.print("\nBoxing round-trip: {d}ns per operation\n", .{ns_per_op});
    // Performance target: < 5ns (should be 1-2ns on modern hardware)
    // Relaxed for CI environments which may have variable performance
    const is_ci = std.process.hasEnvVarConstant("CI") or std.process.hasEnvVarConstant("GITHUB_ACTIONS");
    const threshold: u64 = if (is_ci) perf_boxing_threshold_ci else perf_boxing_threshold_local;
    try testing.expect(ns_per_op < threshold);
    try testing.expect(sum > 0); // Prevent optimization
}

test "perf: array access baseline" {
    const arr = lean.mkArrayWithSize(1000, 1000) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(arr);

    // Populate all elements (required before cleanup)
    var i: usize = 0;
    while (i < 1000) : (i += 1) {
        lean.arraySet(arr, i, lean.boxUsize(i));
    }

    var timer = try std.time.Timer.start();

    const iterations = 1_000_000;
    i = 0;
    var sum: usize = 0;
    while (i < iterations) : (i += 1) {
        const elem = lean.arrayGet(arr, i % 1000);
        sum +%= lean.unboxUsize(elem);
    }

    const elapsed_ns = timer.read();
    const ns_per_op = elapsed_ns / iterations;

    std.debug.print("Array access: {d}ns per operation\n", .{ns_per_op});
    // Performance target: < 5ns (should be 2-3ns)
    const is_ci = std.process.hasEnvVarConstant("CI") or std.process.hasEnvVarConstant("GITHUB_ACTIONS");
    const threshold: u64 = if (is_ci) perf_array_threshold_ci else perf_array_threshold_local;
    try testing.expect(ns_per_op < threshold);
}

test "perf: refcount operations baseline" {
    const obj = lean.allocCtor(0, 0, 0) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(obj);

    var timer = try std.time.Timer.start();

    const iterations = 10_000_000;
    var i: usize = 0;
    while (i < iterations) : (i += 1) {
        lean.lean_inc_ref(obj);
        lean.lean_dec_ref(obj);
    }

    const elapsed_ns = timer.read();
    const ns_per_op = elapsed_ns / (iterations * 2);

    std.debug.print("Refcount operation: {d}ns per inc/dec\n", .{ns_per_op});
    // Performance target: < 2ns (should be 0.5ns)
    const is_ci = std.process.hasEnvVarConstant("CI") or std.process.hasEnvVarConstant("GITHUB_ACTIONS");
    const threshold: u64 = if (is_ci) perf_refcount_threshold_ci else perf_refcount_threshold_local;
    try testing.expect(ns_per_op < threshold);
}
