//! Task operations for asynchronous computations.
//!
//! Tasks represent async work managed by Lean's thread pool.
//! All task operations involve runtime work, forwarded to lean_raw.

const types = @import("types.zig");
const memory = @import("memory.zig");
const lean_raw = @import("lean_raw");

pub const obj_arg = types.obj_arg;
pub const b_obj_arg = types.b_obj_arg;
pub const obj_res = types.obj_res;

pub const lean_inc_ref = memory.lean_inc_ref;
pub const lean_dec_ref = memory.lean_dec_ref;

// ============================================================================
// Core Task Functions (Forwarded from lean_raw)
// ============================================================================

/// Spawn a task to execute a closure asynchronously.
///
/// ## Parameters
/// - `c` - Closure of type `Unit -> A` to execute
/// - `prio` - Priority (higher = more important)
/// - `keep_alive` - Whether to keep task alive after completion
///
/// ## Returns
/// A `Task A` object.
///
/// **Cold path**: Forwarded from lean_raw (involves thread scheduling).
pub const lean_task_spawn_core = lean_raw.lean_task_spawn_core;

/// Get the result of a task, blocking until completion.
///
/// Returns borrowed reference. Use `lean_task_get_own` for ownership.
///
/// **Cold path**: Forwarded from lean_raw (involves synchronization).
pub const lean_task_get = lean_raw.lean_task_get;

/// Get task result with ownership transfer.
///
/// Blocks until task completes, then returns result and decrements
/// task's reference count.
///
/// ## Parameters
/// - `t` - Task to wait for (takes ownership)
///
/// ## Returns
/// Task's result (caller owns).
///
/// ## Implementation Note
/// Inline function matching lean.h for correct ownership semantics.
pub inline fn lean_task_get_own(t: obj_arg) obj_res {
    const result = lean_task_get(t);
    lean_inc_ref(result);
    lean_dec_ref(t);
    return result;
}

/// Apply a function to a task's result, creating new task.
///
/// ## Parameters
/// - `f` - Function of type `A -> B` to apply
/// - `t` - Task of type `Task A`
/// - `prio` - Priority for new task
/// - `sync` - Whether to execute synchronously
/// - `keep_alive` - Whether to keep task alive
///
/// ## Returns
/// A `Task B` object.
///
/// **Cold path**: Forwarded from lean_raw (involves task creation).
pub const lean_task_map_core = lean_raw.lean_task_map_core;

/// Chain tasks together with monadic bind.
///
/// ## Parameters
/// - `x` - Task of type `Task A`
/// - `f` - Function of type `A -> Task B`
/// - `prio` - Priority for new task
/// - `sync` - Whether to execute synchronously
/// - `keep_alive` - Whether to keep task alive
///
/// ## Returns
/// A `Task B` object.
///
/// **Cold path**: Forwarded from lean_raw (involves task creation).
pub const lean_task_bind_core = lean_raw.lean_task_bind_core;

// ============================================================================
// Convenience Wrappers
// ============================================================================

/// Spawn task with default priority and async mode.
pub inline fn taskSpawn(c: obj_arg) obj_res {
    return lean_task_spawn_core(c, 0, false);
}

/// Map function over task with default settings.
pub inline fn taskMap(f: obj_arg, t: obj_arg) obj_res {
    return lean_task_map_core(f, t, 0, false, false);
}

/// Bind tasks together with default settings.
pub inline fn taskBind(x: obj_arg, f: obj_arg) obj_res {
    return lean_task_bind_core(x, f, 0, false, false);
}
