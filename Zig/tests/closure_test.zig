const std = @import("std");
const testing = std.testing;
const lean = @import("../lean.zig");

// ============================================================================
// Closure Tests
// ============================================================================

test "closure: allocation and basic accessors" {
    // Allocate a closure: function that takes 3 params, 1 already fixed
    const mock_fn: *const anyopaque = @ptrFromInt(0x1000); // Mock function pointer
    const closure = lean.lean_alloc_closure(@ptrCast(@constCast(mock_fn)), 3, 1) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(closure);

    // Verify it's a closure
    try testing.expect(lean.isClosure(closure));
    try testing.expect(!lean.isThunk(closure));
    try testing.expect(!lean.isTask(closure));

    // Verify metadata
    try testing.expectEqual(@as(u16, 3), lean.closureArity(closure));
    try testing.expectEqual(@as(u16, 1), lean.closureNumFixed(closure));

    // Verify function pointer (store casted value for clarity)
    const expected_fn_ptr: *anyopaque = @ptrCast(@constCast(mock_fn));
    const fun_ptr = lean.closureFun(closure);
    try testing.expect(fun_ptr == expected_fn_ptr);
}

test "closure: setting and getting fixed arguments" {
    const mock_fn: *const anyopaque = @ptrFromInt(0x2000);
    const closure = lean.lean_alloc_closure(@ptrCast(@constCast(mock_fn)), 4, 2) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(closure);

    // Set fixed arguments
    const arg0 = lean.boxUsize(42);
    const arg1 = lean.boxUsize(84);

    lean.closureSet(closure, 0, arg0);
    lean.closureSet(closure, 1, arg1);

    // Get arguments back
    const retrieved0 = lean.closureGet(closure, 0);
    const retrieved1 = lean.closureGet(closure, 1);

    try testing.expectEqual(@as(usize, 42), lean.unboxUsize(retrieved0));
    try testing.expectEqual(@as(usize, 84), lean.unboxUsize(retrieved1));
}

test "closure: closureArgCptr pointer access" {
    const mock_fn: *const anyopaque = @ptrFromInt(0x3000);
    const closure = lean.lean_alloc_closure(@ptrCast(@constCast(mock_fn)), 5, 3) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(closure);

    // Set arguments
    lean.closureSet(closure, 0, lean.boxUsize(10));
    lean.closureSet(closure, 1, lean.boxUsize(20));
    lean.closureSet(closure, 2, lean.boxUsize(30));

    // Access via pointer
    const args = lean.closureArgCptr(closure);

    try testing.expectEqual(@as(usize, 10), lean.unboxUsize(args[0]));
    try testing.expectEqual(@as(usize, 20), lean.unboxUsize(args[1]));
    try testing.expectEqual(@as(usize, 30), lean.unboxUsize(args[2]));
}

test "closure: zero fixed arguments" {
    // Closure with no captured args yet (will need all params when called)
    const mock_fn: *const anyopaque = @ptrFromInt(0x4000);
    const closure = lean.lean_alloc_closure(@ptrCast(@constCast(mock_fn)), 2, 0) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(closure);

    try testing.expectEqual(@as(u16, 2), lean.closureArity(closure));
    try testing.expectEqual(@as(u16, 0), lean.closureNumFixed(closure));
}

test "closure: fully saturated" {
    // Closure where all params are fixed (ready to call)
    const mock_fn: *const anyopaque = @ptrFromInt(0x5000);
    const closure = lean.lean_alloc_closure(@ptrCast(@constCast(mock_fn)), 2, 2) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(closure);

    lean.closureSet(closure, 0, lean.boxUsize(100));
    lean.closureSet(closure, 1, lean.boxUsize(200));

    // When arity == num_fixed, closure is fully saturated
    const arity = lean.closureArity(closure);
    const fixed = lean.closureNumFixed(closure);
    try testing.expectEqual(arity, fixed);
}

test "closure: reference counting for captured objects" {
    const mock_fn: *const anyopaque = @ptrFromInt(0x6000);
    const closure = lean.lean_alloc_closure(@ptrCast(@constCast(mock_fn)), 3, 1) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(closure);

    // Create an object to capture
    const obj = lean.allocCtor(0, 0, 0) orelse return error.AllocationFailed;
    _ = lean.objectRc(obj); // Just to use it

    // Capture it in closure (closureSet takes ownership)
    lean.closureSet(closure, 0, obj);

    // Object is now owned by closure, we shouldn't dec_ref it
    // When closure is freed, it will dec_ref the captured object
}

test "closure: multiple closures sharing object" {
    const mock_fn: *const anyopaque = @ptrFromInt(0x7000);

    const obj = lean.allocCtor(0, 0, 0) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(obj);

    // Create two closures that will share the object
    const closure1 = lean.lean_alloc_closure(@ptrCast(@constCast(mock_fn)), 2, 1) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(closure1);

    const closure2 = lean.lean_alloc_closure(@ptrCast(@constCast(mock_fn)), 2, 1) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(closure2);

    // Share the object between closures
    lean.lean_inc_ref(obj); // One ref for closure1
    lean.closureSet(closure1, 0, obj);

    lean.lean_inc_ref(obj); // One ref for closure2
    lean.closureSet(closure2, 0, obj);

    // obj now has rc=3: our defer + closure1 + closure2
    try testing.expectEqual(@as(i32, 3), lean.objectRc(obj));
}

test "closure: partial application scenario" {
    // Simulate currying: f(a, b, c) => f(a) returns closure g(b, c)
    const mock_fn: *const anyopaque = @ptrFromInt(0x8000);

    // First application: bind 'a'
    const partial1 = lean.lean_alloc_closure(@ptrCast(@constCast(mock_fn)), 3, 1) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(partial1);
    lean.closureSet(partial1, 0, lean.boxUsize(10));

    try testing.expectEqual(@as(u16, 3), lean.closureArity(partial1));
    try testing.expectEqual(@as(u16, 1), lean.closureNumFixed(partial1));

    // Remaining params: 3 - 1 = 2
    const remaining = lean.closureArity(partial1) - lean.closureNumFixed(partial1);
    try testing.expectEqual(@as(u16, 2), remaining);
}

test "closure: iterate over captured args" {
    const mock_fn: *const anyopaque = @ptrFromInt(0x9000);
    const num_args: u16 = 5;
    const closure = lean.lean_alloc_closure(@ptrCast(@constCast(mock_fn)), num_args, num_args) orelse return error.AllocationFailed;
    defer lean.lean_dec_ref(closure);

    // Populate all arguments
    var i: usize = 0;
    while (i < num_args) : (i += 1) {
        lean.closureSet(closure, i, lean.boxUsize(i * 10));
    }

    // Verify via iteration
    const args = lean.closureArgCptr(closure);
    i = 0;
    while (i < num_args) : (i += 1) {
        const val = lean.unboxUsize(args[i]);
        try testing.expectEqual(i * 10, val);
    }
}
