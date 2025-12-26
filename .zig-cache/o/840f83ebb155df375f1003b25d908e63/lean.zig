pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8) = @import("std").mem.zeroes(c_longlong),
    __clang_max_align_nonce2: c_longdouble align(16) = @import("std").mem.zeroes(c_longdouble),
};
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
pub const int_least8_t = __int_least8_t;
pub const int_least16_t = __int_least16_t;
pub const int_least32_t = __int_least32_t;
pub const int_least64_t = __int_least64_t;
pub const uint_least8_t = __uint_least8_t;
pub const uint_least16_t = __uint_least16_t;
pub const uint_least32_t = __uint_least32_t;
pub const uint_least64_t = __uint_least64_t;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_long;
pub const int_fast32_t = c_long;
pub const int_fast64_t = c_long;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_ulong;
pub const uint_fast32_t = c_ulong;
pub const uint_fast64_t = c_ulong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
pub extern fn mi_malloc(size: usize) ?*anyopaque;
pub extern fn mi_calloc(count: usize, size: usize) ?*anyopaque;
pub extern fn mi_realloc(p: ?*anyopaque, newsize: usize) ?*anyopaque;
pub extern fn mi_expand(p: ?*anyopaque, newsize: usize) ?*anyopaque;
pub extern fn mi_free(p: ?*anyopaque) void;
pub extern fn mi_strdup(s: [*c]const u8) [*c]u8;
pub extern fn mi_strndup(s: [*c]const u8, n: usize) [*c]u8;
pub extern fn mi_realpath(fname: [*c]const u8, resolved_name: [*c]u8) [*c]u8;
pub extern fn mi_malloc_small(size: usize) ?*anyopaque;
pub extern fn mi_zalloc_small(size: usize) ?*anyopaque;
pub extern fn mi_zalloc(size: usize) ?*anyopaque;
pub extern fn mi_mallocn(count: usize, size: usize) ?*anyopaque;
pub extern fn mi_reallocn(p: ?*anyopaque, count: usize, size: usize) ?*anyopaque;
pub extern fn mi_reallocf(p: ?*anyopaque, newsize: usize) ?*anyopaque;
pub extern fn mi_usable_size(p: ?*const anyopaque) usize;
pub extern fn mi_good_size(size: usize) usize;
pub const mi_deferred_free_fun = fn (bool, c_ulonglong, ?*anyopaque) callconv(.c) void;
pub extern fn mi_register_deferred_free(deferred_free: ?*const mi_deferred_free_fun, arg: ?*anyopaque) void;
pub const mi_output_fun = fn ([*c]const u8, ?*anyopaque) callconv(.c) void;
pub extern fn mi_register_output(out: ?*const mi_output_fun, arg: ?*anyopaque) void;
pub const mi_error_fun = fn (c_int, ?*anyopaque) callconv(.c) void;
pub extern fn mi_register_error(fun: ?*const mi_error_fun, arg: ?*anyopaque) void;
pub extern fn mi_collect(force: bool) void;
pub extern fn mi_version() c_int;
pub extern fn mi_stats_reset() void;
pub extern fn mi_stats_merge() void;
pub extern fn mi_stats_print(out: ?*anyopaque) void;
pub extern fn mi_stats_print_out(out: ?*const mi_output_fun, arg: ?*anyopaque) void;
pub extern fn mi_options_print() void;
pub extern fn mi_process_init() void;
pub extern fn mi_thread_init() void;
pub extern fn mi_thread_done() void;
pub extern fn mi_thread_stats_print_out(out: ?*const mi_output_fun, arg: ?*anyopaque) void;
pub extern fn mi_process_info(elapsed_msecs: [*c]usize, user_msecs: [*c]usize, system_msecs: [*c]usize, current_rss: [*c]usize, peak_rss: [*c]usize, current_commit: [*c]usize, peak_commit: [*c]usize, page_faults: [*c]usize) void;
pub extern fn mi_malloc_aligned(size: usize, alignment: usize) ?*anyopaque;
pub extern fn mi_malloc_aligned_at(size: usize, alignment: usize, offset: usize) ?*anyopaque;
pub extern fn mi_zalloc_aligned(size: usize, alignment: usize) ?*anyopaque;
pub extern fn mi_zalloc_aligned_at(size: usize, alignment: usize, offset: usize) ?*anyopaque;
pub extern fn mi_calloc_aligned(count: usize, size: usize, alignment: usize) ?*anyopaque;
pub extern fn mi_calloc_aligned_at(count: usize, size: usize, alignment: usize, offset: usize) ?*anyopaque;
pub extern fn mi_realloc_aligned(p: ?*anyopaque, newsize: usize, alignment: usize) ?*anyopaque;
pub extern fn mi_realloc_aligned_at(p: ?*anyopaque, newsize: usize, alignment: usize, offset: usize) ?*anyopaque;
pub const struct_mi_heap_s = opaque {};
pub const mi_heap_t = struct_mi_heap_s;
pub extern fn mi_heap_new() ?*mi_heap_t;
pub extern fn mi_heap_delete(heap: ?*mi_heap_t) void;
pub extern fn mi_heap_destroy(heap: ?*mi_heap_t) void;
pub extern fn mi_heap_set_default(heap: ?*mi_heap_t) ?*mi_heap_t;
pub extern fn mi_heap_get_default() ?*mi_heap_t;
pub extern fn mi_heap_get_backing() ?*mi_heap_t;
pub extern fn mi_heap_collect(heap: ?*mi_heap_t, force: bool) void;
pub extern fn mi_heap_malloc(heap: ?*mi_heap_t, size: usize) ?*anyopaque;
pub extern fn mi_heap_zalloc(heap: ?*mi_heap_t, size: usize) ?*anyopaque;
pub extern fn mi_heap_calloc(heap: ?*mi_heap_t, count: usize, size: usize) ?*anyopaque;
pub extern fn mi_heap_mallocn(heap: ?*mi_heap_t, count: usize, size: usize) ?*anyopaque;
pub extern fn mi_heap_malloc_small(heap: ?*mi_heap_t, size: usize) ?*anyopaque;
pub extern fn mi_heap_realloc(heap: ?*mi_heap_t, p: ?*anyopaque, newsize: usize) ?*anyopaque;
pub extern fn mi_heap_reallocn(heap: ?*mi_heap_t, p: ?*anyopaque, count: usize, size: usize) ?*anyopaque;
pub extern fn mi_heap_reallocf(heap: ?*mi_heap_t, p: ?*anyopaque, newsize: usize) ?*anyopaque;
pub extern fn mi_heap_strdup(heap: ?*mi_heap_t, s: [*c]const u8) [*c]u8;
pub extern fn mi_heap_strndup(heap: ?*mi_heap_t, s: [*c]const u8, n: usize) [*c]u8;
pub extern fn mi_heap_realpath(heap: ?*mi_heap_t, fname: [*c]const u8, resolved_name: [*c]u8) [*c]u8;
pub extern fn mi_heap_malloc_aligned(heap: ?*mi_heap_t, size: usize, alignment: usize) ?*anyopaque;
pub extern fn mi_heap_malloc_aligned_at(heap: ?*mi_heap_t, size: usize, alignment: usize, offset: usize) ?*anyopaque;
pub extern fn mi_heap_zalloc_aligned(heap: ?*mi_heap_t, size: usize, alignment: usize) ?*anyopaque;
pub extern fn mi_heap_zalloc_aligned_at(heap: ?*mi_heap_t, size: usize, alignment: usize, offset: usize) ?*anyopaque;
pub extern fn mi_heap_calloc_aligned(heap: ?*mi_heap_t, count: usize, size: usize, alignment: usize) ?*anyopaque;
pub extern fn mi_heap_calloc_aligned_at(heap: ?*mi_heap_t, count: usize, size: usize, alignment: usize, offset: usize) ?*anyopaque;
pub extern fn mi_heap_realloc_aligned(heap: ?*mi_heap_t, p: ?*anyopaque, newsize: usize, alignment: usize) ?*anyopaque;
pub extern fn mi_heap_realloc_aligned_at(heap: ?*mi_heap_t, p: ?*anyopaque, newsize: usize, alignment: usize, offset: usize) ?*anyopaque;
pub extern fn mi_rezalloc(p: ?*anyopaque, newsize: usize) ?*anyopaque;
pub extern fn mi_recalloc(p: ?*anyopaque, newcount: usize, size: usize) ?*anyopaque;
pub extern fn mi_rezalloc_aligned(p: ?*anyopaque, newsize: usize, alignment: usize) ?*anyopaque;
pub extern fn mi_rezalloc_aligned_at(p: ?*anyopaque, newsize: usize, alignment: usize, offset: usize) ?*anyopaque;
pub extern fn mi_recalloc_aligned(p: ?*anyopaque, newcount: usize, size: usize, alignment: usize) ?*anyopaque;
pub extern fn mi_recalloc_aligned_at(p: ?*anyopaque, newcount: usize, size: usize, alignment: usize, offset: usize) ?*anyopaque;
pub extern fn mi_heap_rezalloc(heap: ?*mi_heap_t, p: ?*anyopaque, newsize: usize) ?*anyopaque;
pub extern fn mi_heap_recalloc(heap: ?*mi_heap_t, p: ?*anyopaque, newcount: usize, size: usize) ?*anyopaque;
pub extern fn mi_heap_rezalloc_aligned(heap: ?*mi_heap_t, p: ?*anyopaque, newsize: usize, alignment: usize) ?*anyopaque;
pub extern fn mi_heap_rezalloc_aligned_at(heap: ?*mi_heap_t, p: ?*anyopaque, newsize: usize, alignment: usize, offset: usize) ?*anyopaque;
pub extern fn mi_heap_recalloc_aligned(heap: ?*mi_heap_t, p: ?*anyopaque, newcount: usize, size: usize, alignment: usize) ?*anyopaque;
pub extern fn mi_heap_recalloc_aligned_at(heap: ?*mi_heap_t, p: ?*anyopaque, newcount: usize, size: usize, alignment: usize, offset: usize) ?*anyopaque;
pub extern fn mi_heap_contains_block(heap: ?*mi_heap_t, p: ?*const anyopaque) bool;
pub extern fn mi_heap_check_owned(heap: ?*mi_heap_t, p: ?*const anyopaque) bool;
pub extern fn mi_check_owned(p: ?*const anyopaque) bool;
pub const struct_mi_heap_area_s = extern struct {
    blocks: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reserved: usize = @import("std").mem.zeroes(usize),
    committed: usize = @import("std").mem.zeroes(usize),
    used: usize = @import("std").mem.zeroes(usize),
    block_size: usize = @import("std").mem.zeroes(usize),
    full_block_size: usize = @import("std").mem.zeroes(usize),
    heap_tag: c_int = @import("std").mem.zeroes(c_int),
};
pub const mi_heap_area_t = struct_mi_heap_area_s;
pub const mi_block_visit_fun = fn (?*const mi_heap_t, [*c]const mi_heap_area_t, ?*anyopaque, usize, ?*anyopaque) callconv(.c) bool;
pub extern fn mi_heap_visit_blocks(heap: ?*const mi_heap_t, visit_blocks: bool, visitor: ?*const mi_block_visit_fun, arg: ?*anyopaque) bool;
pub extern fn mi_is_in_heap_region(p: ?*const anyopaque) bool;
pub extern fn mi_is_redirected() bool;
pub extern fn mi_reserve_huge_os_pages_interleave(pages: usize, numa_nodes: usize, timeout_msecs: usize) c_int;
pub extern fn mi_reserve_huge_os_pages_at(pages: usize, numa_node: c_int, timeout_msecs: usize) c_int;
pub extern fn mi_reserve_os_memory(size: usize, commit: bool, allow_large: bool) c_int;
pub extern fn mi_manage_os_memory(start: ?*anyopaque, size: usize, is_committed: bool, is_large: bool, is_zero: bool, numa_node: c_int) bool;
pub extern fn mi_debug_show_arenas() void;
pub extern fn mi_arenas_print() void;
pub const mi_arena_id_t = c_int;
pub extern fn mi_arena_area(arena_id: mi_arena_id_t, size: [*c]usize) ?*anyopaque;
pub extern fn mi_reserve_huge_os_pages_at_ex(pages: usize, numa_node: c_int, timeout_msecs: usize, exclusive: bool, arena_id: [*c]mi_arena_id_t) c_int;
pub extern fn mi_reserve_os_memory_ex(size: usize, commit: bool, allow_large: bool, exclusive: bool, arena_id: [*c]mi_arena_id_t) c_int;
pub extern fn mi_manage_os_memory_ex(start: ?*anyopaque, size: usize, is_committed: bool, is_large: bool, is_zero: bool, numa_node: c_int, exclusive: bool, arena_id: [*c]mi_arena_id_t) bool;
pub extern fn mi_heap_new_in_arena(arena_id: mi_arena_id_t) ?*mi_heap_t;
pub const mi_subproc_id_t = ?*anyopaque;
pub extern fn mi_subproc_main() mi_subproc_id_t;
pub extern fn mi_subproc_new() mi_subproc_id_t;
pub extern fn mi_subproc_delete(subproc: mi_subproc_id_t) void;
pub extern fn mi_subproc_add_current_thread(subproc: mi_subproc_id_t) void;
pub extern fn mi_abandoned_visit_blocks(subproc_id: mi_subproc_id_t, heap_tag: c_int, visit_blocks: bool, visitor: ?*const mi_block_visit_fun, arg: ?*anyopaque) bool;
pub extern fn mi_heap_guarded_set_sample_rate(heap: ?*mi_heap_t, sample_rate: usize, seed: usize) void;
pub extern fn mi_heap_guarded_set_size_bound(heap: ?*mi_heap_t, min: usize, max: usize) void;
pub extern fn mi_thread_set_in_threadpool() void;
pub extern fn mi_heap_new_ex(heap_tag: c_int, allow_destroy: bool, arena_id: mi_arena_id_t) ?*mi_heap_t;
pub extern fn mi_reserve_huge_os_pages(pages: usize, max_secs: f64, pages_reserved: [*c]usize) c_int;
pub extern fn mi_collect_reduce(target_thread_owned: usize) void;
pub const mi_option_show_errors: c_int = 0;
pub const mi_option_show_stats: c_int = 1;
pub const mi_option_verbose: c_int = 2;
pub const mi_option_eager_commit: c_int = 3;
pub const mi_option_arena_eager_commit: c_int = 4;
pub const mi_option_purge_decommits: c_int = 5;
pub const mi_option_allow_large_os_pages: c_int = 6;
pub const mi_option_reserve_huge_os_pages: c_int = 7;
pub const mi_option_reserve_huge_os_pages_at: c_int = 8;
pub const mi_option_reserve_os_memory: c_int = 9;
pub const mi_option_deprecated_segment_cache: c_int = 10;
pub const mi_option_deprecated_page_reset: c_int = 11;
pub const mi_option_abandoned_page_purge: c_int = 12;
pub const mi_option_deprecated_segment_reset: c_int = 13;
pub const mi_option_eager_commit_delay: c_int = 14;
pub const mi_option_purge_delay: c_int = 15;
pub const mi_option_use_numa_nodes: c_int = 16;
pub const mi_option_disallow_os_alloc: c_int = 17;
pub const mi_option_os_tag: c_int = 18;
pub const mi_option_max_errors: c_int = 19;
pub const mi_option_max_warnings: c_int = 20;
pub const mi_option_max_segment_reclaim: c_int = 21;
pub const mi_option_destroy_on_exit: c_int = 22;
pub const mi_option_arena_reserve: c_int = 23;
pub const mi_option_arena_purge_mult: c_int = 24;
pub const mi_option_purge_extend_delay: c_int = 25;
pub const mi_option_abandoned_reclaim_on_free: c_int = 26;
pub const mi_option_disallow_arena_alloc: c_int = 27;
pub const mi_option_retry_on_oom: c_int = 28;
pub const mi_option_visit_abandoned: c_int = 29;
pub const mi_option_guarded_min: c_int = 30;
pub const mi_option_guarded_max: c_int = 31;
pub const mi_option_guarded_precise: c_int = 32;
pub const mi_option_guarded_sample_rate: c_int = 33;
pub const mi_option_guarded_sample_seed: c_int = 34;
pub const mi_option_target_segments_per_thread: c_int = 35;
pub const mi_option_generic_collect: c_int = 36;
pub const _mi_option_last: c_int = 37;
pub const mi_option_large_os_pages: c_int = 6;
pub const mi_option_eager_region_commit: c_int = 4;
pub const mi_option_reset_decommits: c_int = 5;
pub const mi_option_reset_delay: c_int = 15;
pub const mi_option_abandoned_page_reset: c_int = 12;
pub const mi_option_limit_os_alloc: c_int = 17;
pub const enum_mi_option_e = c_uint;
pub const mi_option_t = enum_mi_option_e;
pub extern fn mi_option_is_enabled(option: mi_option_t) bool;
pub extern fn mi_option_enable(option: mi_option_t) void;
pub extern fn mi_option_disable(option: mi_option_t) void;
pub extern fn mi_option_set_enabled(option: mi_option_t, enable: bool) void;
pub extern fn mi_option_set_enabled_default(option: mi_option_t, enable: bool) void;
pub extern fn mi_option_get(option: mi_option_t) c_long;
pub extern fn mi_option_get_clamp(option: mi_option_t, min: c_long, max: c_long) c_long;
pub extern fn mi_option_get_size(option: mi_option_t) usize;
pub extern fn mi_option_set(option: mi_option_t, value: c_long) void;
pub extern fn mi_option_set_default(option: mi_option_t, value: c_long) void;
pub extern fn mi_cfree(p: ?*anyopaque) void;
pub extern fn mi__expand(p: ?*anyopaque, newsize: usize) ?*anyopaque;
pub extern fn mi_malloc_size(p: ?*const anyopaque) usize;
pub extern fn mi_malloc_good_size(size: usize) usize;
pub extern fn mi_malloc_usable_size(p: ?*const anyopaque) usize;
pub extern fn mi_posix_memalign(p: [*c]?*anyopaque, alignment: usize, size: usize) c_int;
pub extern fn mi_memalign(alignment: usize, size: usize) ?*anyopaque;
pub extern fn mi_valloc(size: usize) ?*anyopaque;
pub extern fn mi_pvalloc(size: usize) ?*anyopaque;
pub extern fn mi_aligned_alloc(alignment: usize, size: usize) ?*anyopaque;
pub extern fn mi_reallocarray(p: ?*anyopaque, count: usize, size: usize) ?*anyopaque;
pub extern fn mi_reallocarr(p: ?*anyopaque, count: usize, size: usize) c_int;
pub extern fn mi_aligned_recalloc(p: ?*anyopaque, newcount: usize, size: usize, alignment: usize) ?*anyopaque;
pub extern fn mi_aligned_offset_recalloc(p: ?*anyopaque, newcount: usize, size: usize, alignment: usize, offset: usize) ?*anyopaque;
pub extern fn mi_wcsdup(s: [*c]const c_ushort) [*c]c_ushort;
pub extern fn mi_mbsdup(s: [*c]const u8) [*c]u8;
pub extern fn mi_dupenv_s(buf: [*c][*c]u8, size: [*c]usize, name: [*c]const u8) c_int;
pub extern fn mi_wdupenv_s(buf: [*c][*c]c_ushort, size: [*c]usize, name: [*c]const c_ushort) c_int;
pub extern fn mi_free_size(p: ?*anyopaque, size: usize) void;
pub extern fn mi_free_size_aligned(p: ?*anyopaque, size: usize, alignment: usize) void;
pub extern fn mi_free_aligned(p: ?*anyopaque, alignment: usize) void;
pub extern fn mi_new(size: usize) ?*anyopaque;
pub extern fn mi_new_aligned(size: usize, alignment: usize) ?*anyopaque;
pub extern fn mi_new_nothrow(size: usize) ?*anyopaque;
pub extern fn mi_new_aligned_nothrow(size: usize, alignment: usize) ?*anyopaque;
pub extern fn mi_new_n(count: usize, size: usize) ?*anyopaque;
pub extern fn mi_new_realloc(p: ?*anyopaque, newsize: usize) ?*anyopaque;
pub extern fn mi_new_reallocn(p: ?*anyopaque, newcount: usize, size: usize) ?*anyopaque;
pub extern fn mi_heap_alloc_new(heap: ?*mi_heap_t, size: usize) ?*anyopaque;
pub extern fn mi_heap_alloc_new_n(heap: ?*mi_heap_t, count: usize, size: usize) ?*anyopaque;
pub const memory_order_relaxed: c_int = 0;
pub const memory_order_consume: c_int = 1;
pub const memory_order_acquire: c_int = 2;
pub const memory_order_release: c_int = 3;
pub const memory_order_acq_rel: c_int = 4;
pub const memory_order_seq_cst: c_int = 5;
pub const enum_memory_order = c_uint;
pub const memory_order = enum_memory_order;
pub extern fn atomic_thread_fence(memory_order) void;
pub extern fn atomic_signal_fence(memory_order) void;
// /usr/lib/zig/include/stdatomic.h:97:37: warning: unsupported type: 'Atomic'
pub const atomic_bool = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:97:37

// /usr/lib/zig/include/stdatomic.h:99:37: warning: unsupported type: 'Atomic'
pub const atomic_char = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:99:37

// /usr/lib/zig/include/stdatomic.h:100:37: warning: unsupported type: 'Atomic'
pub const atomic_schar = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:100:37

// /usr/lib/zig/include/stdatomic.h:101:37: warning: unsupported type: 'Atomic'
pub const atomic_uchar = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:101:37

// /usr/lib/zig/include/stdatomic.h:102:37: warning: unsupported type: 'Atomic'
pub const atomic_short = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:102:37

// /usr/lib/zig/include/stdatomic.h:103:37: warning: unsupported type: 'Atomic'
pub const atomic_ushort = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:103:37

// /usr/lib/zig/include/stdatomic.h:104:37: warning: unsupported type: 'Atomic'
pub const atomic_int = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:104:37

// /usr/lib/zig/include/stdatomic.h:105:37: warning: unsupported type: 'Atomic'
pub const atomic_uint = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:105:37

// /usr/lib/zig/include/stdatomic.h:106:37: warning: unsupported type: 'Atomic'
pub const atomic_long = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:106:37

// /usr/lib/zig/include/stdatomic.h:107:37: warning: unsupported type: 'Atomic'
pub const atomic_ulong = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:107:37

// /usr/lib/zig/include/stdatomic.h:108:37: warning: unsupported type: 'Atomic'
pub const atomic_llong = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:108:37

// /usr/lib/zig/include/stdatomic.h:109:37: warning: unsupported type: 'Atomic'
pub const atomic_ullong = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:109:37

// /usr/lib/zig/include/stdatomic.h:113:37: warning: unsupported type: 'Atomic'
pub const atomic_char16_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:113:37

// /usr/lib/zig/include/stdatomic.h:114:37: warning: unsupported type: 'Atomic'
pub const atomic_char32_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:114:37

// /usr/lib/zig/include/stdatomic.h:115:37: warning: unsupported type: 'Atomic'
pub const atomic_wchar_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:115:37

// /usr/lib/zig/include/stdatomic.h:116:37: warning: unsupported type: 'Atomic'
pub const atomic_int_least8_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:116:37

// /usr/lib/zig/include/stdatomic.h:117:37: warning: unsupported type: 'Atomic'
pub const atomic_uint_least8_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:117:37

// /usr/lib/zig/include/stdatomic.h:118:37: warning: unsupported type: 'Atomic'
pub const atomic_int_least16_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:118:37

// /usr/lib/zig/include/stdatomic.h:119:37: warning: unsupported type: 'Atomic'
pub const atomic_uint_least16_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:119:37

// /usr/lib/zig/include/stdatomic.h:120:37: warning: unsupported type: 'Atomic'
pub const atomic_int_least32_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:120:37

// /usr/lib/zig/include/stdatomic.h:121:37: warning: unsupported type: 'Atomic'
pub const atomic_uint_least32_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:121:37

// /usr/lib/zig/include/stdatomic.h:122:37: warning: unsupported type: 'Atomic'
pub const atomic_int_least64_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:122:37

// /usr/lib/zig/include/stdatomic.h:123:37: warning: unsupported type: 'Atomic'
pub const atomic_uint_least64_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:123:37

// /usr/lib/zig/include/stdatomic.h:124:37: warning: unsupported type: 'Atomic'
pub const atomic_int_fast8_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:124:37

// /usr/lib/zig/include/stdatomic.h:125:37: warning: unsupported type: 'Atomic'
pub const atomic_uint_fast8_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:125:37

// /usr/lib/zig/include/stdatomic.h:126:37: warning: unsupported type: 'Atomic'
pub const atomic_int_fast16_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:126:37

// /usr/lib/zig/include/stdatomic.h:127:37: warning: unsupported type: 'Atomic'
pub const atomic_uint_fast16_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:127:37

// /usr/lib/zig/include/stdatomic.h:128:37: warning: unsupported type: 'Atomic'
pub const atomic_int_fast32_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:128:37

// /usr/lib/zig/include/stdatomic.h:129:37: warning: unsupported type: 'Atomic'
pub const atomic_uint_fast32_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:129:37

// /usr/lib/zig/include/stdatomic.h:130:37: warning: unsupported type: 'Atomic'
pub const atomic_int_fast64_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:130:37

// /usr/lib/zig/include/stdatomic.h:131:37: warning: unsupported type: 'Atomic'
pub const atomic_uint_fast64_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:131:37

// /usr/lib/zig/include/stdatomic.h:132:37: warning: unsupported type: 'Atomic'
pub const atomic_intptr_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:132:37

// /usr/lib/zig/include/stdatomic.h:133:37: warning: unsupported type: 'Atomic'
pub const atomic_uintptr_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:133:37

// /usr/lib/zig/include/stdatomic.h:134:37: warning: unsupported type: 'Atomic'
pub const atomic_size_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:134:37

// /usr/lib/zig/include/stdatomic.h:135:37: warning: unsupported type: 'Atomic'
pub const atomic_ptrdiff_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:135:37

// /usr/lib/zig/include/stdatomic.h:136:37: warning: unsupported type: 'Atomic'
pub const atomic_intmax_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:136:37

// /usr/lib/zig/include/stdatomic.h:137:37: warning: unsupported type: 'Atomic'
pub const atomic_uintmax_t = @compileError("unable to resolve typedef child type");
// /usr/lib/zig/include/stdatomic.h:137:37
pub const struct_atomic_flag = extern struct {
    _Value: atomic_bool = @import("std").mem.zeroes(atomic_bool),
};
pub const atomic_flag = struct_atomic_flag;
pub extern fn atomic_flag_test_and_set([*c]volatile atomic_flag) bool;
pub extern fn atomic_flag_test_and_set_explicit([*c]volatile atomic_flag, memory_order) bool;
pub extern fn atomic_flag_clear([*c]volatile atomic_flag) void;
pub extern fn atomic_flag_clear_explicit([*c]volatile atomic_flag, memory_order) void;
pub extern fn lean_notify_assert(fileName: [*c]const u8, line: c_int, condition: [*c]const u8) void;
pub fn lean_is_big_object_tag(arg_tag: u8) callconv(.c) bool {
    var tag = arg_tag;
    _ = &tag;
    return (((@as(c_int, @bitCast(@as(c_uint, tag))) == @as(c_int, 246)) or (@as(c_int, @bitCast(@as(c_uint, tag))) == @as(c_int, 247))) or (@as(c_int, @bitCast(@as(c_uint, tag))) == @as(c_int, 248))) or (@as(c_int, @bitCast(@as(c_uint, tag))) == @as(c_int, 249));
}
pub const assertion_failed___FILE___110 = [1]u8;
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:133:14: warning: struct demoted to opaque type - has bitfield
pub const lean_object = opaque {};
pub const lean_obj_arg = ?*lean_object;
pub const b_lean_obj_arg = ?*lean_object;
pub const u_lean_obj_arg = ?*lean_object;
pub const lean_obj_res = ?*lean_object;
pub const b_lean_obj_res = ?*lean_object;
pub const lean_ctor_object = extern struct {
    m_header: lean_object align(8) = @import("std").mem.zeroes(lean_object),
    pub fn m_objs(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), ?*lean_object) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), ?*lean_object);
        return @as(ReturnType, @ptrCast(@alignCast(@as(Intermediate, @ptrCast(self)) + 8)));
    }
};
pub const lean_array_object = extern struct {
    m_header: lean_object align(8) = @import("std").mem.zeroes(lean_object),
    m_size: usize = @import("std").mem.zeroes(usize),
    m_capacity: usize = @import("std").mem.zeroes(usize),
    pub fn m_data(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), ?*lean_object) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), ?*lean_object);
        return @as(ReturnType, @ptrCast(@alignCast(@as(Intermediate, @ptrCast(self)) + 24)));
    }
};
pub const lean_sarray_object = extern struct {
    m_header: lean_object align(8) = @import("std").mem.zeroes(lean_object),
    m_size: usize = @import("std").mem.zeroes(usize),
    m_capacity: usize = @import("std").mem.zeroes(usize),
    pub fn m_data(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        return @as(ReturnType, @ptrCast(@alignCast(@as(Intermediate, @ptrCast(self)) + 24)));
    }
};
pub const lean_string_object = extern struct {
    m_header: lean_object align(8) = @import("std").mem.zeroes(lean_object),
    m_size: usize = @import("std").mem.zeroes(usize),
    m_capacity: usize = @import("std").mem.zeroes(usize),
    m_length: usize = @import("std").mem.zeroes(usize),
    pub fn m_data(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        return @as(ReturnType, @ptrCast(@alignCast(@as(Intermediate, @ptrCast(self)) + 32)));
    }
};
pub const lean_closure_object = extern struct {
    m_header: lean_object align(8) = @import("std").mem.zeroes(lean_object),
    m_fun: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    m_arity: u16 = @import("std").mem.zeroes(u16),
    m_num_fixed: u16 = @import("std").mem.zeroes(u16),
    pub fn m_objs(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), ?*lean_object) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), ?*lean_object);
        return @as(ReturnType, @ptrCast(@alignCast(@as(Intermediate, @ptrCast(self)) + 24)));
    }
};
pub const lean_ref_object = extern struct {
    m_header: lean_object = @import("std").mem.zeroes(lean_object),
    m_value: ?*lean_object = @import("std").mem.zeroes(?*lean_object),
};
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:214:28: warning: unsupported type: 'Atomic'

// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:212:9: warning: struct demoted to opaque type - unable to translate type of field m_value
pub const lean_thunk_object = opaque {};
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:286:28: warning: unsupported type: 'Atomic'

// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:218:8: warning: struct demoted to opaque type - unable to translate type of field m_value
pub const struct_lean_task = opaque {};
pub const lean_task_imp = extern struct {
    m_closure: ?*lean_object = @import("std").mem.zeroes(?*lean_object),
    m_head_dep: ?*struct_lean_task = @import("std").mem.zeroes(?*struct_lean_task),
    m_next_dep: ?*struct_lean_task = @import("std").mem.zeroes(?*struct_lean_task),
    m_prio: c_uint = @import("std").mem.zeroes(c_uint),
    m_canceled: u8 = @import("std").mem.zeroes(u8),
    m_keep_alive: u8 = @import("std").mem.zeroes(u8),
    m_deleted: u8 = @import("std").mem.zeroes(u8),
};
pub const lean_task_object = struct_lean_task;
pub const struct_lean_promise = extern struct {
    m_header: lean_object = @import("std").mem.zeroes(lean_object),
    m_result: ?*lean_task_object = @import("std").mem.zeroes(?*lean_task_object),
};
pub const lean_promise_object = struct_lean_promise;
pub const lean_external_finalize_proc = ?*const fn (?*anyopaque) callconv(.c) void;
pub const lean_external_foreach_proc = ?*const fn (?*anyopaque, b_lean_obj_arg) callconv(.c) void;
pub const lean_external_class = extern struct {
    m_finalize: lean_external_finalize_proc = @import("std").mem.zeroes(lean_external_finalize_proc),
    m_foreach: lean_external_foreach_proc = @import("std").mem.zeroes(lean_external_foreach_proc),
};
pub extern fn lean_register_external_class(lean_external_finalize_proc, lean_external_foreach_proc) [*c]lean_external_class;
pub const lean_external_object = extern struct {
    m_header: lean_object = @import("std").mem.zeroes(lean_object),
    m_class: [*c]lean_external_class = @import("std").mem.zeroes([*c]lean_external_class),
    m_data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub fn lean_is_scalar(arg_o: ?*lean_object) callconv(.c) bool {
    var o = arg_o;
    _ = &o;
    return (@as(usize, @intCast(@intFromPtr(o))) & @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) == @as(usize, @bitCast(@as(c_long, @as(c_int, 1))));
}
pub fn lean_box(arg_n: usize) callconv(.c) ?*lean_object {
    var n = arg_n;
    _ = &n;
    return @as(?*lean_object, @ptrFromInt((n << @intCast(1)) | @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))));
}
pub fn lean_unbox(arg_o: ?*lean_object) callconv(.c) usize {
    var o = arg_o;
    _ = &o;
    return @as(usize, @intCast(@intFromPtr(o))) >> @intCast(1);
}
pub extern fn lean_set_exit_on_panic(flag: bool) void;
pub extern fn lean_set_panic_messages(flag: bool) void;
pub extern fn lean_panic(msg: [*c]const u8, force_stderr: bool) void;
pub extern fn lean_panic_fn(default_val: ?*lean_object, msg: ?*lean_object) ?*lean_object;
pub extern fn lean_internal_panic(msg: [*c]const u8) noreturn;
pub extern fn lean_internal_panic_out_of_memory() noreturn;
pub extern fn lean_internal_panic_unreachable() noreturn;
pub extern fn lean_internal_panic_rc_overflow() noreturn;
pub fn lean_align(arg_v: usize, arg_a: usize) callconv(.c) usize {
    var v = arg_v;
    _ = &v;
    var a = arg_a;
    _ = &a;
    return ((v / a) *% a) +% (a *% @as(usize, @intFromBool((v % a) != @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))))));
}
pub fn lean_get_slot_idx(arg_sz: c_uint) callconv(.c) c_uint {
    var sz = arg_sz;
    _ = &sz;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(sz > @as(c_uint, @bitCast(@as(c_int, 0)))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 333), "sz > 0");
        }
    }
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(lean_align(@as(usize, @bitCast(@as(c_ulong, sz))), @as(usize, @bitCast(@as(c_long, @as(c_int, 8))))) == @as(usize, @bitCast(@as(c_ulong, sz)))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 334), "lean_align(sz, LEAN_OBJECT_SIZE_DELTA) == sz");
        }
    }
    return (sz / @as(c_uint, @bitCast(@as(c_int, 8)))) -% @as(c_uint, @bitCast(@as(c_int, 1)));
}
pub extern fn lean_alloc_small(sz: c_uint, slot_idx: c_uint) ?*anyopaque;
pub extern fn lean_free_small(p: ?*anyopaque) void;
pub extern fn lean_small_mem_size(p: ?*anyopaque) c_uint;
pub extern fn lean_inc_heartbeat() void;
pub extern fn malloc(c_ulong) ?*anyopaque;
pub fn lean_alloc_small_object(arg_sz: c_uint) callconv(.c) ?*lean_object {
    var sz = arg_sz;
    _ = &sz;
    lean_inc_heartbeat();
    sz = @as(c_uint, @bitCast(@as(c_uint, @truncate(lean_align(@as(usize, @bitCast(@as(c_ulong, sz))), @as(usize, @bitCast(@as(c_long, @as(c_int, 8)))))))));
    var mem: ?*anyopaque = mi_malloc_small(@as(usize, @bitCast(@as(c_ulong, sz))));
    _ = &mem;
    if (mem == null) {
        lean_internal_panic_out_of_memory();
    }
    var o: ?*lean_object = @as(?*lean_object, @ptrCast(mem));
    _ = &o;
    o.*.m_cs_sz = sz;
    return o;
}
pub fn lean_alloc_ctor_memory(arg_sz: c_uint) callconv(.c) ?*lean_object {
    var sz = arg_sz;
    _ = &sz;
    var sz1: c_uint = @as(c_uint, @bitCast(@as(c_uint, @truncate(lean_align(@as(usize, @bitCast(@as(c_ulong, sz))), @as(usize, @bitCast(@as(c_long, @as(c_int, 8)))))))));
    _ = &sz1;
    var r: ?*lean_object = lean_alloc_small_object(sz);
    _ = &r;
    if (sz1 > sz) {
        var end: [*c]usize = @as([*c]usize, @ptrCast(@alignCast(@as([*c]u8, @ptrCast(@alignCast(r))) + sz1)));
        _ = &end;
        (blk: {
            const tmp = -@as(c_int, 1);
            if (tmp >= 0) break :blk end + @as(usize, @intCast(tmp)) else break :blk end - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).* = 0;
    }
    return r;
}
pub fn lean_small_object_size(arg_o: ?*lean_object) callconv(.c) c_uint {
    var o = arg_o;
    _ = &o;
    return o.*.m_cs_sz;
}
pub extern fn free(?*anyopaque) void;
pub extern fn free_sized(ptr: ?*anyopaque, usize) void;
pub fn lean_free_small_object(arg_o: ?*lean_object) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    mi_free(@as(?*anyopaque, @ptrCast(o)));
}
pub extern fn lean_alloc_object(sz: usize) ?*lean_object;
pub extern fn lean_free_object(o: ?*lean_object) void;
pub fn lean_ptr_tag(arg_o: ?*lean_object) callconv(.c) u8 {
    var o = arg_o;
    _ = &o;
    return @as(u8, @bitCast(@as(u8, @truncate(o.*.m_tag))));
}
pub fn lean_ptr_other(arg_o: ?*lean_object) callconv(.c) c_uint {
    var o = arg_o;
    _ = &o;
    return o.*.m_other;
}
pub extern fn lean_object_byte_size(o: ?*lean_object) usize;
pub extern fn lean_object_data_byte_size(o: ?*lean_object) usize;
pub fn lean_is_mt(arg_o: ?*lean_object) callconv(.c) bool {
    var o = arg_o;
    _ = &o;
    return o.*.m_rc < @as(c_int, 0);
}
pub fn lean_is_st(arg_o: ?*lean_object) callconv(.c) bool {
    var o = arg_o;
    _ = &o;
    return o.*.m_rc > @as(c_int, 0);
}
pub fn lean_is_persistent(arg_o: ?*lean_object) callconv(.c) bool {
    var o = arg_o;
    _ = &o;
    return o.*.m_rc == @as(c_int, 0);
}
pub fn lean_has_rc(arg_o: ?*lean_object) callconv(.c) bool {
    var o = arg_o;
    _ = &o;
    return o.*.m_rc != @as(c_int, 0);
}
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:483:30: warning: unsupported type: 'Atomic'

// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:483:30: warning: unsupported function proto return type
pub const lean_get_rc_mt_addr = @compileError("unable to resolve prototype of function");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:483:30

// /usr/lib/zig/include/stdatomic.h:160:35: warning: TODO implement translation of stmt class AtomicExprClass

// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:487:20: warning: unable to translate function, demoted to extern
pub extern fn lean_inc_ref_n(arg_o: ?*lean_object, arg_n: usize) callconv(.c) void;
pub fn lean_inc_ref(arg_o: ?*lean_object) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    lean_inc_ref_n(o, @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
}
pub extern fn lean_dec_ref_cold(o: ?*lean_object) void;
pub fn lean_dec_ref(arg_o: ?*lean_object) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    if (__builtin_expect(@as(c_long, @intFromBool(o.*.m_rc > @as(c_int, 1))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        o.*.m_rc -= 1;
    } else if (o.*.m_rc != @as(c_int, 0)) {
        lean_dec_ref_cold(o);
    }
}
pub fn lean_inc(arg_o: ?*lean_object) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    if (!lean_is_scalar(o)) {
        lean_inc_ref(o);
    }
}
pub fn lean_inc_n(arg_o: ?*lean_object, arg_n: usize) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    var n = arg_n;
    _ = &n;
    if (!lean_is_scalar(o)) {
        lean_inc_ref_n(o, n);
    }
}
pub fn lean_dec(arg_o: ?*lean_object) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    if (!lean_is_scalar(o)) {
        lean_dec_ref(o);
    }
}
pub fn lean_is_ctor(arg_o: ?*lean_object) callconv(.c) bool {
    var o = arg_o;
    _ = &o;
    return @as(c_int, @bitCast(@as(c_uint, lean_ptr_tag(o)))) <= @as(c_int, 243);
}
pub fn lean_is_closure(arg_o: ?*lean_object) callconv(.c) bool {
    var o = arg_o;
    _ = &o;
    return @as(c_int, @bitCast(@as(c_uint, lean_ptr_tag(o)))) == @as(c_int, 245);
}
pub fn lean_is_array(arg_o: ?*lean_object) callconv(.c) bool {
    var o = arg_o;
    _ = &o;
    return @as(c_int, @bitCast(@as(c_uint, lean_ptr_tag(o)))) == @as(c_int, 246);
}
pub fn lean_is_sarray(arg_o: ?*lean_object) callconv(.c) bool {
    var o = arg_o;
    _ = &o;
    return @as(c_int, @bitCast(@as(c_uint, lean_ptr_tag(o)))) == @as(c_int, 248);
}
pub fn lean_is_string(arg_o: ?*lean_object) callconv(.c) bool {
    var o = arg_o;
    _ = &o;
    return @as(c_int, @bitCast(@as(c_uint, lean_ptr_tag(o)))) == @as(c_int, 249);
}
pub fn lean_is_mpz(arg_o: ?*lean_object) callconv(.c) bool {
    var o = arg_o;
    _ = &o;
    return @as(c_int, @bitCast(@as(c_uint, lean_ptr_tag(o)))) == @as(c_int, 250);
}
pub fn lean_is_thunk(arg_o: ?*lean_object) callconv(.c) bool {
    var o = arg_o;
    _ = &o;
    return @as(c_int, @bitCast(@as(c_uint, lean_ptr_tag(o)))) == @as(c_int, 251);
}
pub fn lean_is_task(arg_o: ?*lean_object) callconv(.c) bool {
    var o = arg_o;
    _ = &o;
    return @as(c_int, @bitCast(@as(c_uint, lean_ptr_tag(o)))) == @as(c_int, 252);
}
pub fn lean_is_promise(arg_o: ?*lean_object) callconv(.c) bool {
    var o = arg_o;
    _ = &o;
    return @as(c_int, @bitCast(@as(c_uint, lean_ptr_tag(o)))) == @as(c_int, 244);
}
pub fn lean_is_external(arg_o: ?*lean_object) callconv(.c) bool {
    var o = arg_o;
    _ = &o;
    return @as(c_int, @bitCast(@as(c_uint, lean_ptr_tag(o)))) == @as(c_int, 254);
}
pub fn lean_is_ref(arg_o: ?*lean_object) callconv(.c) bool {
    var o = arg_o;
    _ = &o;
    return @as(c_int, @bitCast(@as(c_uint, lean_ptr_tag(o)))) == @as(c_int, 253);
}
pub fn lean_obj_tag(arg_o: ?*lean_object) callconv(.c) c_uint {
    var o = arg_o;
    _ = &o;
    if (lean_is_scalar(o)) return @as(c_uint, @bitCast(@as(c_uint, @truncate(lean_unbox(o))))) else return @as(c_uint, @bitCast(@as(c_uint, lean_ptr_tag(o))));
    return 0;
}
pub fn lean_to_ctor(arg_o: ?*lean_object) callconv(.c) ?*lean_ctor_object {
    var o = arg_o;
    _ = &o;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_ctor(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 532), "lean_is_ctor(o)");
        }
    }
    return @as(?*lean_ctor_object, @ptrCast(@alignCast(o)));
}
pub fn lean_to_closure(arg_o: ?*lean_object) callconv(.c) ?*lean_closure_object {
    var o = arg_o;
    _ = &o;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_closure(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 533), "lean_is_closure(o)");
        }
    }
    return @as(?*lean_closure_object, @ptrCast(@alignCast(o)));
}
pub fn lean_to_array(arg_o: ?*lean_object) callconv(.c) ?*lean_array_object {
    var o = arg_o;
    _ = &o;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_array(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 534), "lean_is_array(o)");
        }
    }
    return @as(?*lean_array_object, @ptrCast(@alignCast(o)));
}
pub fn lean_to_sarray(arg_o: ?*lean_object) callconv(.c) ?*lean_sarray_object {
    var o = arg_o;
    _ = &o;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_sarray(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 535), "lean_is_sarray(o)");
        }
    }
    return @as(?*lean_sarray_object, @ptrCast(@alignCast(o)));
}
pub fn lean_to_string(arg_o: ?*lean_object) callconv(.c) ?*lean_string_object {
    var o = arg_o;
    _ = &o;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_string(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 536), "lean_is_string(o)");
        }
    }
    return @as(?*lean_string_object, @ptrCast(@alignCast(o)));
}
pub fn lean_to_thunk(arg_o: ?*lean_object) callconv(.c) ?*lean_thunk_object {
    var o = arg_o;
    _ = &o;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_thunk(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 537), "lean_is_thunk(o)");
        }
    }
    return @as(?*lean_thunk_object, @ptrCast(@alignCast(o)));
}
pub fn lean_to_task(arg_o: ?*lean_object) callconv(.c) ?*lean_task_object {
    var o = arg_o;
    _ = &o;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_task(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 538), "lean_is_task(o)");
        }
    }
    return @as(?*lean_task_object, @ptrCast(@alignCast(o)));
}
pub fn lean_to_promise(arg_o: ?*lean_object) callconv(.c) ?*lean_promise_object {
    var o = arg_o;
    _ = &o;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_promise(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 539), "lean_is_promise(o)");
        }
    }
    return @as(?*lean_promise_object, @ptrCast(@alignCast(o)));
}
pub fn lean_to_ref(arg_o: ?*lean_object) callconv(.c) ?*lean_ref_object {
    var o = arg_o;
    _ = &o;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_ref(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 540), "lean_is_ref(o)");
        }
    }
    return @as(?*lean_ref_object, @ptrCast(@alignCast(o)));
}
pub fn lean_to_external(arg_o: ?*lean_object) callconv(.c) ?*lean_external_object {
    var o = arg_o;
    _ = &o;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_external(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 541), "lean_is_external(o)");
        }
    }
    return @as(?*lean_external_object, @ptrCast(@alignCast(o)));
}
pub fn lean_is_exclusive(arg_o: ?*lean_object) callconv(.c) bool {
    var o = arg_o;
    _ = &o;
    if (__builtin_expect(@as(c_long, @intFromBool(lean_is_st(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        return o.*.m_rc == @as(c_int, 1);
    } else {
        return @as(c_int, 0) != 0;
    }
    return false;
}
pub fn lean_is_exclusive_obj(arg_o: ?*lean_object) callconv(.c) u8 {
    var o = arg_o;
    _ = &o;
    return @as(u8, @intFromBool(lean_is_exclusive(o)));
}
pub fn lean_is_shared(arg_o: ?*lean_object) callconv(.c) bool {
    var o = arg_o;
    _ = &o;
    if (__builtin_expect(@as(c_long, @intFromBool(lean_is_st(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        return o.*.m_rc > @as(c_int, 1);
    } else {
        return @as(c_int, 0) != 0;
    }
    return false;
}
pub extern fn lean_mark_mt(o: ?*lean_object) void;
pub extern fn lean_mark_persistent(o: ?*lean_object) void;
pub fn lean_set_st_header(arg_o: ?*lean_object, arg_tag: c_uint, arg_other: c_uint) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    var tag = arg_tag;
    _ = &tag;
    var other = arg_other;
    _ = &other;
    o.*.m_rc = 1;
    o.*.m_tag = tag;
    o.*.m_other = other;
}
pub fn lean_set_non_heap_header(arg_o: ?*lean_object, arg_sz: usize, arg_tag: c_uint, arg_other: c_uint) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    var sz = arg_sz;
    _ = &sz;
    var tag = arg_tag;
    _ = &tag;
    var other = arg_other;
    _ = &other;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(sz > @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 579), "sz > 0");
        }
    }
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(@as(c_ulonglong, @bitCast(@as(c_ulonglong, sz))) < (@as(c_ulonglong, 1) << @intCast(16))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 580), "sz < (1ull << 16)");
        }
    }
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!((sz == @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) or !lean_is_big_object_tag(@as(u8, @bitCast(@as(u8, @truncate(tag)))))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 581), "sz == 1 || !lean_is_big_object_tag(tag)");
        }
    }
    o.*.m_rc = 0;
    o.*.m_tag = tag;
    o.*.m_other = other;
    o.*.m_cs_sz = @as(c_uint, @bitCast(@as(c_uint, @truncate(sz))));
}
pub fn lean_set_non_heap_header_for_big(arg_o: ?*lean_object, arg_tag: c_uint, arg_other: c_uint) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    var tag = arg_tag;
    _ = &tag;
    var other = arg_other;
    _ = &other;
    lean_set_non_heap_header(o, @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))), tag, other);
}
pub fn lean_ctor_num_objs(arg_o: ?*lean_object) callconv(.c) c_uint {
    var o = arg_o;
    _ = &o;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_ctor(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 596), "lean_is_ctor(o)");
        }
    }
    return lean_ptr_other(o);
}
pub fn lean_ctor_obj_cptr(arg_o: ?*lean_object) callconv(.c) [*c]?*lean_object {
    var o = arg_o;
    _ = &o;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_ctor(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 601), "lean_is_ctor(o)");
        }
    }
    return lean_to_ctor(o).*.m_objs();
}
pub fn lean_ctor_scalar_cptr(arg_o: ?*lean_object) callconv(.c) [*c]u8 {
    var o = arg_o;
    _ = &o;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_ctor(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 606), "lean_is_ctor(o)");
        }
    }
    return @as([*c]u8, @ptrCast(@alignCast(lean_ctor_obj_cptr(o) + lean_ctor_num_objs(o))));
}
pub fn lean_alloc_ctor(arg_tag: c_uint, arg_num_objs: c_uint, arg_scalar_sz: c_uint) callconv(.c) ?*lean_object {
    var tag = arg_tag;
    _ = &tag;
    var num_objs = arg_num_objs;
    _ = &num_objs;
    var scalar_sz = arg_scalar_sz;
    _ = &scalar_sz;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(((tag <= @as(c_uint, @bitCast(@as(c_int, 243)))) and (num_objs < @as(c_uint, @bitCast(@as(c_int, 256))))) and (scalar_sz < @as(c_uint, @bitCast(@as(c_int, 1024))))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 611), "tag <= LeanMaxCtorTag && num_objs < LEAN_MAX_CTOR_FIELDS && scalar_sz < LEAN_MAX_CTOR_SCALARS_SIZE");
        }
    }
    var o: ?*lean_object = lean_alloc_ctor_memory(@as(c_uint, @bitCast(@as(c_uint, @truncate((@sizeOf(lean_ctor_object) +% (@sizeOf(?*anyopaque) *% @as(c_ulong, @bitCast(@as(c_ulong, num_objs))))) +% @as(c_ulong, @bitCast(@as(c_ulong, scalar_sz))))))));
    _ = &o;
    lean_set_st_header(o, tag, num_objs);
    return o;
}
pub fn lean_ctor_get(arg_o: b_lean_obj_arg, arg_i: c_uint) callconv(.c) b_lean_obj_res {
    var o = arg_o;
    _ = &o;
    var i = arg_i;
    _ = &i;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(i < lean_ctor_num_objs(o)))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 618), "i < lean_ctor_num_objs(o)");
        }
    }
    return lean_ctor_obj_cptr(o)[i];
}
pub fn lean_ctor_set(arg_o: b_lean_obj_arg, arg_i: c_uint, arg_v: lean_obj_arg) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    var i = arg_i;
    _ = &i;
    var v = arg_v;
    _ = &v;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(i < lean_ctor_num_objs(o)))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 623), "i < lean_ctor_num_objs(o)");
        }
    }
    lean_ctor_obj_cptr(o)[i] = v;
}
pub fn lean_ctor_set_tag(arg_o: b_lean_obj_arg, arg_new_tag: u8) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    var new_tag = arg_new_tag;
    _ = &new_tag;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(@as(c_int, @bitCast(@as(c_uint, new_tag))) <= @as(c_int, 243)))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 628), "new_tag <= LeanMaxCtorTag");
        }
    }
    o.*.m_tag = @as(c_uint, @bitCast(@as(c_uint, new_tag)));
}
pub fn lean_ctor_release(arg_o: b_lean_obj_arg, arg_i: c_uint) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    var i = arg_i;
    _ = &i;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(i < lean_ctor_num_objs(o)))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 633), "i < lean_ctor_num_objs(o)");
        }
    }
    var objs: [*c]?*lean_object = lean_ctor_obj_cptr(o);
    _ = &objs;
    lean_dec(objs[i]);
    objs[i] = lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
}
pub fn lean_ctor_get_usize(arg_o: b_lean_obj_arg, arg_i: c_uint) callconv(.c) usize {
    var o = arg_o;
    _ = &o;
    var i = arg_i;
    _ = &i;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(i >= lean_ctor_num_objs(o)))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 640), "i >= lean_ctor_num_objs(o)");
        }
    }
    return @as([*c]usize, @ptrCast(@alignCast(lean_ctor_obj_cptr(o) + i))).*;
}
pub fn lean_ctor_get_uint8(arg_o: b_lean_obj_arg, arg_offset: c_uint) callconv(.c) u8 {
    var o = arg_o;
    _ = &o;
    var offset = arg_offset;
    _ = &offset;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(@as(c_ulong, @bitCast(@as(c_ulong, offset))) >= (@as(c_ulong, @bitCast(@as(c_ulong, lean_ctor_num_objs(o)))) *% @sizeOf(?*anyopaque))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 645), "offset >= lean_ctor_num_objs(o) * sizeof(void*)");
        }
    }
    return (@as([*c]u8, @ptrCast(@alignCast(lean_ctor_obj_cptr(o)))) + offset).*;
}
pub fn lean_ctor_get_uint16(arg_o: b_lean_obj_arg, arg_offset: c_uint) callconv(.c) u16 {
    var o = arg_o;
    _ = &o;
    var offset = arg_offset;
    _ = &offset;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(@as(c_ulong, @bitCast(@as(c_ulong, offset))) >= (@as(c_ulong, @bitCast(@as(c_ulong, lean_ctor_num_objs(o)))) *% @sizeOf(?*anyopaque))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 650), "offset >= lean_ctor_num_objs(o) * sizeof(void*)");
        }
    }
    return @as([*c]u16, @ptrCast(@alignCast(@as([*c]u8, @ptrCast(@alignCast(lean_ctor_obj_cptr(o)))) + offset))).*;
}
pub fn lean_ctor_get_uint32(arg_o: b_lean_obj_arg, arg_offset: c_uint) callconv(.c) u32 {
    var o = arg_o;
    _ = &o;
    var offset = arg_offset;
    _ = &offset;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(@as(c_ulong, @bitCast(@as(c_ulong, offset))) >= (@as(c_ulong, @bitCast(@as(c_ulong, lean_ctor_num_objs(o)))) *% @sizeOf(?*anyopaque))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 655), "offset >= lean_ctor_num_objs(o) * sizeof(void*)");
        }
    }
    return @as([*c]u32, @ptrCast(@alignCast(@as([*c]u8, @ptrCast(@alignCast(lean_ctor_obj_cptr(o)))) + offset))).*;
}
pub fn lean_ctor_get_uint64(arg_o: b_lean_obj_arg, arg_offset: c_uint) callconv(.c) u64 {
    var o = arg_o;
    _ = &o;
    var offset = arg_offset;
    _ = &offset;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(@as(c_ulong, @bitCast(@as(c_ulong, offset))) >= (@as(c_ulong, @bitCast(@as(c_ulong, lean_ctor_num_objs(o)))) *% @sizeOf(?*anyopaque))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 660), "offset >= lean_ctor_num_objs(o) * sizeof(void*)");
        }
    }
    return @as([*c]u64, @ptrCast(@alignCast(@as([*c]u8, @ptrCast(@alignCast(lean_ctor_obj_cptr(o)))) + offset))).*;
}
pub fn lean_ctor_get_float(arg_o: b_lean_obj_arg, arg_offset: c_uint) callconv(.c) f64 {
    var o = arg_o;
    _ = &o;
    var offset = arg_offset;
    _ = &offset;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(@as(c_ulong, @bitCast(@as(c_ulong, offset))) >= (@as(c_ulong, @bitCast(@as(c_ulong, lean_ctor_num_objs(o)))) *% @sizeOf(?*anyopaque))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 665), "offset >= lean_ctor_num_objs(o) * sizeof(void*)");
        }
    }
    return @as([*c]f64, @ptrCast(@alignCast(@as([*c]u8, @ptrCast(@alignCast(lean_ctor_obj_cptr(o)))) + offset))).*;
}
pub fn lean_ctor_get_float32(arg_o: b_lean_obj_arg, arg_offset: c_uint) callconv(.c) f32 {
    var o = arg_o;
    _ = &o;
    var offset = arg_offset;
    _ = &offset;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(@as(c_ulong, @bitCast(@as(c_ulong, offset))) >= (@as(c_ulong, @bitCast(@as(c_ulong, lean_ctor_num_objs(o)))) *% @sizeOf(?*anyopaque))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 670), "offset >= lean_ctor_num_objs(o) * sizeof(void*)");
        }
    }
    return @as([*c]f32, @ptrCast(@alignCast(@as([*c]u8, @ptrCast(@alignCast(lean_ctor_obj_cptr(o)))) + offset))).*;
}
pub fn lean_ctor_set_usize(arg_o: b_lean_obj_arg, arg_i: c_uint, arg_v: usize) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    var i = arg_i;
    _ = &i;
    var v = arg_v;
    _ = &v;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(i >= lean_ctor_num_objs(o)))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 675), "i >= lean_ctor_num_objs(o)");
        }
    }
    @as([*c]usize, @ptrCast(@alignCast(lean_ctor_obj_cptr(o) + i))).* = v;
}
pub fn lean_ctor_set_uint8(arg_o: b_lean_obj_arg, arg_offset: c_uint, arg_v: u8) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    var offset = arg_offset;
    _ = &offset;
    var v = arg_v;
    _ = &v;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(@as(c_ulong, @bitCast(@as(c_ulong, offset))) >= (@as(c_ulong, @bitCast(@as(c_ulong, lean_ctor_num_objs(o)))) *% @sizeOf(?*anyopaque))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 680), "offset >= lean_ctor_num_objs(o) * sizeof(void*)");
        }
    }
    (@as([*c]u8, @ptrCast(@alignCast(lean_ctor_obj_cptr(o)))) + offset).* = v;
}
pub fn lean_ctor_set_uint16(arg_o: b_lean_obj_arg, arg_offset: c_uint, arg_v: u16) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    var offset = arg_offset;
    _ = &offset;
    var v = arg_v;
    _ = &v;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(@as(c_ulong, @bitCast(@as(c_ulong, offset))) >= (@as(c_ulong, @bitCast(@as(c_ulong, lean_ctor_num_objs(o)))) *% @sizeOf(?*anyopaque))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 685), "offset >= lean_ctor_num_objs(o) * sizeof(void*)");
        }
    }
    @as([*c]u16, @ptrCast(@alignCast(@as([*c]u8, @ptrCast(@alignCast(lean_ctor_obj_cptr(o)))) + offset))).* = v;
}
pub fn lean_ctor_set_uint32(arg_o: b_lean_obj_arg, arg_offset: c_uint, arg_v: u32) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    var offset = arg_offset;
    _ = &offset;
    var v = arg_v;
    _ = &v;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(@as(c_ulong, @bitCast(@as(c_ulong, offset))) >= (@as(c_ulong, @bitCast(@as(c_ulong, lean_ctor_num_objs(o)))) *% @sizeOf(?*anyopaque))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 690), "offset >= lean_ctor_num_objs(o) * sizeof(void*)");
        }
    }
    @as([*c]u32, @ptrCast(@alignCast(@as([*c]u8, @ptrCast(@alignCast(lean_ctor_obj_cptr(o)))) + offset))).* = v;
}
pub fn lean_ctor_set_uint64(arg_o: b_lean_obj_arg, arg_offset: c_uint, arg_v: u64) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    var offset = arg_offset;
    _ = &offset;
    var v = arg_v;
    _ = &v;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(@as(c_ulong, @bitCast(@as(c_ulong, offset))) >= (@as(c_ulong, @bitCast(@as(c_ulong, lean_ctor_num_objs(o)))) *% @sizeOf(?*anyopaque))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 695), "offset >= lean_ctor_num_objs(o) * sizeof(void*)");
        }
    }
    @as([*c]u64, @ptrCast(@alignCast(@as([*c]u8, @ptrCast(@alignCast(lean_ctor_obj_cptr(o)))) + offset))).* = v;
}
pub fn lean_ctor_set_float(arg_o: b_lean_obj_arg, arg_offset: c_uint, arg_v: f64) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    var offset = arg_offset;
    _ = &offset;
    var v = arg_v;
    _ = &v;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(@as(c_ulong, @bitCast(@as(c_ulong, offset))) >= (@as(c_ulong, @bitCast(@as(c_ulong, lean_ctor_num_objs(o)))) *% @sizeOf(?*anyopaque))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 700), "offset >= lean_ctor_num_objs(o) * sizeof(void*)");
        }
    }
    @as([*c]f64, @ptrCast(@alignCast(@as([*c]u8, @ptrCast(@alignCast(lean_ctor_obj_cptr(o)))) + offset))).* = v;
}
pub fn lean_ctor_set_float32(arg_o: b_lean_obj_arg, arg_offset: c_uint, arg_v: f32) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    var offset = arg_offset;
    _ = &offset;
    var v = arg_v;
    _ = &v;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(@as(c_ulong, @bitCast(@as(c_ulong, offset))) >= (@as(c_ulong, @bitCast(@as(c_ulong, lean_ctor_num_objs(o)))) *% @sizeOf(?*anyopaque))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 705), "offset >= lean_ctor_num_objs(o) * sizeof(void*)");
        }
    }
    @as([*c]f32, @ptrCast(@alignCast(@as([*c]u8, @ptrCast(@alignCast(lean_ctor_obj_cptr(o)))) + offset))).* = v;
}
pub fn lean_closure_fun(arg_o: ?*lean_object) callconv(.c) ?*anyopaque {
    var o = arg_o;
    _ = &o;
    return lean_to_closure(o).*.m_fun;
}
pub fn lean_closure_arity(arg_o: ?*lean_object) callconv(.c) c_uint {
    var o = arg_o;
    _ = &o;
    return @as(c_uint, @bitCast(@as(c_uint, lean_to_closure(o).*.m_arity)));
}
pub fn lean_closure_num_fixed(arg_o: ?*lean_object) callconv(.c) c_uint {
    var o = arg_o;
    _ = &o;
    return @as(c_uint, @bitCast(@as(c_uint, lean_to_closure(o).*.m_num_fixed)));
}
pub fn lean_closure_arg_cptr(arg_o: ?*lean_object) callconv(.c) [*c]?*lean_object {
    var o = arg_o;
    _ = &o;
    return lean_to_closure(o).*.m_objs();
}
pub fn lean_alloc_closure(arg_fun: ?*anyopaque, arg_arity: c_uint, arg_num_fixed: c_uint) callconv(.c) lean_obj_res {
    var fun = arg_fun;
    _ = &fun;
    var arity = arg_arity;
    _ = &arity;
    var num_fixed = arg_num_fixed;
    _ = &num_fixed;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(arity > @as(c_uint, @bitCast(@as(c_int, 0)))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 716), "arity > 0");
        }
    }
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(num_fixed < arity))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 717), "num_fixed < arity");
        }
    }
    var o: ?*lean_closure_object = @as(?*lean_closure_object, @ptrCast(@alignCast(lean_alloc_object(@sizeOf(lean_closure_object) +% (@sizeOf(?*anyopaque) *% @as(c_ulong, @bitCast(@as(c_ulong, num_fixed))))))));
    _ = &o;
    lean_set_st_header(@as(?*lean_object, @ptrCast(o)), @as(c_uint, @bitCast(@as(c_int, 245))), @as(c_uint, @bitCast(@as(c_int, 0))));
    o.*.m_fun = fun;
    o.*.m_arity = @as(u16, @bitCast(@as(c_ushort, @truncate(arity))));
    o.*.m_num_fixed = @as(u16, @bitCast(@as(c_ushort, @truncate(num_fixed))));
    return @as(?*lean_object, @ptrCast(o));
}
pub fn lean_closure_get(arg_o: b_lean_obj_arg, arg_i: c_uint) callconv(.c) b_lean_obj_res {
    var o = arg_o;
    _ = &o;
    var i = arg_i;
    _ = &i;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(i < lean_closure_num_fixed(o)))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 726), "i < lean_closure_num_fixed(o)");
        }
    }
    return lean_to_closure(o).*.m_objs()[i];
}
pub fn lean_closure_set(arg_o: u_lean_obj_arg, arg_i: c_uint, arg_a: lean_obj_arg) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    var i = arg_i;
    _ = &i;
    var a = arg_a;
    _ = &a;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(i < lean_closure_num_fixed(o)))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 730), "i < lean_closure_num_fixed(o)");
        }
    }
    lean_to_closure(o).*.m_objs()[i] = a;
}
pub extern fn lean_apply_1(f: ?*lean_object, a1: ?*lean_object) ?*lean_object;
pub extern fn lean_apply_2(f: ?*lean_object, a1: ?*lean_object, a2: ?*lean_object) ?*lean_object;
pub extern fn lean_apply_3(f: ?*lean_object, a1: ?*lean_object, a2: ?*lean_object, a3: ?*lean_object) ?*lean_object;
pub extern fn lean_apply_4(f: ?*lean_object, a1: ?*lean_object, a2: ?*lean_object, a3: ?*lean_object, a4: ?*lean_object) ?*lean_object;
pub extern fn lean_apply_5(f: ?*lean_object, a1: ?*lean_object, a2: ?*lean_object, a3: ?*lean_object, a4: ?*lean_object, a5: ?*lean_object) ?*lean_object;
pub extern fn lean_apply_6(f: ?*lean_object, a1: ?*lean_object, a2: ?*lean_object, a3: ?*lean_object, a4: ?*lean_object, a5: ?*lean_object, a6: ?*lean_object) ?*lean_object;
pub extern fn lean_apply_7(f: ?*lean_object, a1: ?*lean_object, a2: ?*lean_object, a3: ?*lean_object, a4: ?*lean_object, a5: ?*lean_object, a6: ?*lean_object, a7: ?*lean_object) ?*lean_object;
pub extern fn lean_apply_8(f: ?*lean_object, a1: ?*lean_object, a2: ?*lean_object, a3: ?*lean_object, a4: ?*lean_object, a5: ?*lean_object, a6: ?*lean_object, a7: ?*lean_object, a8: ?*lean_object) ?*lean_object;
pub extern fn lean_apply_9(f: ?*lean_object, a1: ?*lean_object, a2: ?*lean_object, a3: ?*lean_object, a4: ?*lean_object, a5: ?*lean_object, a6: ?*lean_object, a7: ?*lean_object, a8: ?*lean_object, a9: ?*lean_object) ?*lean_object;
pub extern fn lean_apply_10(f: ?*lean_object, a1: ?*lean_object, a2: ?*lean_object, a3: ?*lean_object, a4: ?*lean_object, a5: ?*lean_object, a6: ?*lean_object, a7: ?*lean_object, a8: ?*lean_object, a9: ?*lean_object, a10: ?*lean_object) ?*lean_object;
pub extern fn lean_apply_11(f: ?*lean_object, a1: ?*lean_object, a2: ?*lean_object, a3: ?*lean_object, a4: ?*lean_object, a5: ?*lean_object, a6: ?*lean_object, a7: ?*lean_object, a8: ?*lean_object, a9: ?*lean_object, a10: ?*lean_object, a11: ?*lean_object) ?*lean_object;
pub extern fn lean_apply_12(f: ?*lean_object, a1: ?*lean_object, a2: ?*lean_object, a3: ?*lean_object, a4: ?*lean_object, a5: ?*lean_object, a6: ?*lean_object, a7: ?*lean_object, a8: ?*lean_object, a9: ?*lean_object, a10: ?*lean_object, a11: ?*lean_object, a12: ?*lean_object) ?*lean_object;
pub extern fn lean_apply_13(f: ?*lean_object, a1: ?*lean_object, a2: ?*lean_object, a3: ?*lean_object, a4: ?*lean_object, a5: ?*lean_object, a6: ?*lean_object, a7: ?*lean_object, a8: ?*lean_object, a9: ?*lean_object, a10: ?*lean_object, a11: ?*lean_object, a12: ?*lean_object, a13: ?*lean_object) ?*lean_object;
pub extern fn lean_apply_14(f: ?*lean_object, a1: ?*lean_object, a2: ?*lean_object, a3: ?*lean_object, a4: ?*lean_object, a5: ?*lean_object, a6: ?*lean_object, a7: ?*lean_object, a8: ?*lean_object, a9: ?*lean_object, a10: ?*lean_object, a11: ?*lean_object, a12: ?*lean_object, a13: ?*lean_object, a14: ?*lean_object) ?*lean_object;
pub extern fn lean_apply_15(f: ?*lean_object, a1: ?*lean_object, a2: ?*lean_object, a3: ?*lean_object, a4: ?*lean_object, a5: ?*lean_object, a6: ?*lean_object, a7: ?*lean_object, a8: ?*lean_object, a9: ?*lean_object, a10: ?*lean_object, a11: ?*lean_object, a12: ?*lean_object, a13: ?*lean_object, a14: ?*lean_object, a15: ?*lean_object) ?*lean_object;
pub extern fn lean_apply_16(f: ?*lean_object, a1: ?*lean_object, a2: ?*lean_object, a3: ?*lean_object, a4: ?*lean_object, a5: ?*lean_object, a6: ?*lean_object, a7: ?*lean_object, a8: ?*lean_object, a9: ?*lean_object, a10: ?*lean_object, a11: ?*lean_object, a12: ?*lean_object, a13: ?*lean_object, a14: ?*lean_object, a15: ?*lean_object, a16: ?*lean_object) ?*lean_object;
pub extern fn lean_apply_n(f: ?*lean_object, n: c_uint, args: [*c]?*lean_object) ?*lean_object;
pub extern fn lean_apply_m(f: ?*lean_object, n: c_uint, args: [*c]?*lean_object) ?*lean_object;
pub fn lean_alloc_array(arg_size: usize, arg_capacity: usize) callconv(.c) lean_obj_res {
    var size = arg_size;
    _ = &size;
    var capacity = arg_capacity;
    _ = &capacity;
    var o: ?*lean_array_object = @as(?*lean_array_object, @ptrCast(@alignCast(lean_alloc_object(@sizeOf(lean_array_object) +% (@sizeOf(?*anyopaque) *% capacity)))));
    _ = &o;
    lean_set_st_header(@as(?*lean_object, @ptrCast(o)), @as(c_uint, @bitCast(@as(c_int, 246))), @as(c_uint, @bitCast(@as(c_int, 0))));
    o.*.m_size = size;
    o.*.m_capacity = capacity;
    return @as(?*lean_object, @ptrCast(o));
}
pub fn lean_array_size(arg_o: b_lean_obj_arg) callconv(.c) usize {
    var o = arg_o;
    _ = &o;
    return lean_to_array(o).*.m_size;
}
pub fn lean_array_capacity(arg_o: b_lean_obj_arg) callconv(.c) usize {
    var o = arg_o;
    _ = &o;
    return lean_to_array(o).*.m_capacity;
}
pub fn lean_array_byte_size(arg_o: ?*lean_object) callconv(.c) usize {
    var o = arg_o;
    _ = &o;
    return @sizeOf(lean_array_object) +% (@sizeOf(?*anyopaque) *% lean_array_capacity(o));
}
pub fn lean_array_data_byte_size(arg_o: ?*lean_object) callconv(.c) usize {
    var o = arg_o;
    _ = &o;
    return @sizeOf(lean_array_object) +% (@sizeOf(?*anyopaque) *% lean_array_size(o));
}
pub fn lean_array_cptr(arg_o: ?*lean_object) callconv(.c) [*c]?*lean_object {
    var o = arg_o;
    _ = &o;
    return lean_to_array(o).*.m_data();
}
pub fn lean_array_set_size(arg_o: u_lean_obj_arg, arg_sz: usize) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    var sz = arg_sz;
    _ = &sz;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_array(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 772), "lean_is_array(o)");
        }
    }
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_exclusive(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 773), "lean_is_exclusive(o)");
        }
    }
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(sz <= lean_array_capacity(o)))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 774), "sz <= lean_array_capacity(o)");
        }
    }
    lean_to_array(o).*.m_size = sz;
}
pub fn lean_array_get_core(arg_o: b_lean_obj_arg, arg_i: usize) callconv(.c) b_lean_obj_res {
    var o = arg_o;
    _ = &o;
    var i = arg_i;
    _ = &i;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(i < lean_array_size(o)))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 778), "i < lean_array_size(o)");
        }
    }
    return lean_to_array(o).*.m_data()[i];
}
pub fn lean_array_set_core(arg_o: u_lean_obj_arg, arg_i: usize, arg_v: lean_obj_arg) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    var i = arg_i;
    _ = &i;
    var v = arg_v;
    _ = &v;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(!lean_has_rc(o) or (@as(c_int, @intFromBool(lean_is_exclusive(o))) != 0)))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 784), "!lean_has_rc(o) || lean_is_exclusive(o)");
        }
    }
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(i < lean_array_size(o)))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 785), "i < lean_array_size(o)");
        }
    }
    lean_to_array(o).*.m_data()[i] = v;
}
pub extern fn lean_array_mk(l: lean_obj_arg) ?*lean_object;
pub extern fn lean_array_to_list(a: lean_obj_arg) ?*lean_object;
pub fn lean_array_sz(arg_a: lean_obj_arg) callconv(.c) ?*lean_object {
    var a = arg_a;
    _ = &a;
    var r: ?*lean_object = lean_box(lean_array_size(a));
    _ = &r;
    lean_dec(a);
    return r;
}
pub fn lean_array_get_size(arg_a: b_lean_obj_arg) callconv(.c) ?*lean_object {
    var a = arg_a;
    _ = &a;
    return lean_box(lean_array_size(a));
}
pub fn lean_mk_empty_array() callconv(.c) ?*lean_object {
    return lean_alloc_array(@as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
}
pub fn lean_mk_empty_array_with_capacity(arg_capacity: b_lean_obj_arg) callconv(.c) ?*lean_object {
    var capacity = arg_capacity;
    _ = &capacity;
    if (!lean_is_scalar(capacity)) {
        lean_internal_panic_out_of_memory();
    }
    return lean_alloc_array(@as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), lean_unbox(capacity));
}
pub fn lean_array_uget(arg_a: b_lean_obj_arg, arg_i: usize) callconv(.c) ?*lean_object {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    var r: ?*lean_object = lean_array_get_core(a, i);
    _ = &r;
    lean_inc(r);
    return r;
}
pub fn lean_array_fget(arg_a: b_lean_obj_arg, arg_i: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    return lean_array_uget(a, lean_unbox(i));
}
pub fn lean_array_fget_borrowed(arg_a: b_lean_obj_arg, arg_i: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    return lean_array_get_core(a, lean_unbox(i));
}
pub extern fn lean_array_get_panic(def_val: lean_obj_arg) lean_obj_res;
pub fn lean_array_get(arg_def_val: lean_obj_arg, arg_a: b_lean_obj_arg, arg_i: b_lean_obj_arg) callconv(.c) ?*lean_object {
    var def_val = arg_def_val;
    _ = &def_val;
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    if (lean_is_scalar(i)) {
        var idx: usize = lean_unbox(i);
        _ = &idx;
        if (idx < lean_array_size(a)) {
            lean_dec(def_val);
            return lean_array_uget(a, idx);
        }
    }
    return lean_array_get_panic(def_val);
}
pub fn lean_array_get_borrowed(arg_def_val: lean_obj_arg, arg_a: b_lean_obj_arg, arg_i: b_lean_obj_arg) callconv(.c) ?*lean_object {
    var def_val = arg_def_val;
    _ = &def_val;
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    if (lean_is_scalar(i)) {
        var idx: usize = lean_unbox(i);
        _ = &idx;
        if (idx < lean_array_size(a)) {
            lean_dec(def_val);
            return lean_array_get_core(a, idx);
        }
    }
    return lean_array_get_panic(def_val);
}
pub extern fn lean_copy_expand_array(a: lean_obj_arg, expand: bool) lean_obj_res;
pub fn lean_copy_array(arg_a: lean_obj_arg) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    return lean_copy_expand_array(a, @as(c_int, 0) != 0);
}
pub fn lean_ensure_exclusive_array(arg_a: lean_obj_arg) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    if (lean_is_exclusive(a)) return a;
    return lean_copy_array(a);
}
pub fn lean_array_uset(arg_a: lean_obj_arg, arg_i: usize, arg_v: lean_obj_arg) callconv(.c) ?*lean_object {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    var v = arg_v;
    _ = &v;
    var r: ?*lean_object = lean_ensure_exclusive_array(a);
    _ = &r;
    var it: [*c]?*lean_object = lean_array_cptr(r) + i;
    _ = &it;
    lean_dec(it.*);
    it.* = v;
    return r;
}
pub fn lean_array_fset(arg_a: lean_obj_arg, arg_i: b_lean_obj_arg, arg_v: lean_obj_arg) callconv(.c) ?*lean_object {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    var v = arg_v;
    _ = &v;
    return lean_array_uset(a, lean_unbox(i), v);
}
pub extern fn lean_array_set_panic(a: lean_obj_arg, v: lean_obj_arg) lean_obj_res;
pub fn lean_array_set(arg_a: lean_obj_arg, arg_i: b_lean_obj_arg, arg_v: lean_obj_arg) callconv(.c) ?*lean_object {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    var v = arg_v;
    _ = &v;
    if (lean_is_scalar(i)) {
        var idx: usize = lean_unbox(i);
        _ = &idx;
        if (idx < lean_array_size(a)) return lean_array_uset(a, idx, v);
    }
    return lean_array_set_panic(a, v);
}
pub fn lean_array_pop(arg_a: lean_obj_arg) callconv(.c) ?*lean_object {
    var a = arg_a;
    _ = &a;
    var r: ?*lean_object = lean_ensure_exclusive_array(a);
    _ = &r;
    var sz: usize = lean_to_array(r).*.m_size;
    _ = &sz;
    var last: [*c]?*lean_object = undefined;
    _ = &last;
    if (sz == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) return r;
    sz -%= 1;
    last = lean_array_cptr(r) + sz;
    lean_to_array(r).*.m_size = sz;
    lean_dec(last.*);
    return r;
}
pub fn lean_array_uswap(arg_a: lean_obj_arg, arg_i: usize, arg_j: usize) callconv(.c) ?*lean_object {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    var j = arg_j;
    _ = &j;
    var r: ?*lean_object = lean_ensure_exclusive_array(a);
    _ = &r;
    var it: [*c]?*lean_object = lean_array_cptr(r);
    _ = &it;
    var v1: ?*lean_object = it[i];
    _ = &v1;
    it[i] = it[j];
    it[j] = v1;
    return r;
}
pub fn lean_array_fswap(arg_a: lean_obj_arg, arg_i: b_lean_obj_arg, arg_j: b_lean_obj_arg) callconv(.c) ?*lean_object {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    var j = arg_j;
    _ = &j;
    return lean_array_uswap(a, lean_unbox(i), lean_unbox(j));
}
pub fn lean_array_swap(arg_a: lean_obj_arg, arg_i: b_lean_obj_arg, arg_j: b_lean_obj_arg) callconv(.c) ?*lean_object {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    var j = arg_j;
    _ = &j;
    if (!lean_is_scalar(i) or !lean_is_scalar(j)) return a;
    var ui: usize = lean_unbox(i);
    _ = &ui;
    var uj: usize = lean_unbox(j);
    _ = &uj;
    var sz: usize = lean_to_array(a).*.m_size;
    _ = &sz;
    if ((ui >= sz) or (uj >= sz)) return a;
    return lean_array_uswap(a, ui, uj);
}
pub extern fn lean_array_push(a: lean_obj_arg, v: lean_obj_arg) ?*lean_object;
pub extern fn lean_mk_array(n: lean_obj_arg, v: lean_obj_arg) ?*lean_object;
pub fn lean_alloc_sarray(arg_elem_size: c_uint, arg_size: usize, arg_capacity: usize) callconv(.c) lean_obj_res {
    var elem_size = arg_elem_size;
    _ = &elem_size;
    var size = arg_size;
    _ = &size;
    var capacity = arg_capacity;
    _ = &capacity;
    var o: ?*lean_sarray_object = @as(?*lean_sarray_object, @ptrCast(@alignCast(lean_alloc_object(@sizeOf(lean_sarray_object) +% (@as(usize, @bitCast(@as(c_ulong, elem_size))) *% capacity)))));
    _ = &o;
    lean_set_st_header(@as(?*lean_object, @ptrCast(o)), @as(c_uint, @bitCast(@as(c_int, 248))), elem_size);
    o.*.m_size = size;
    o.*.m_capacity = capacity;
    return @as(?*lean_object, @ptrCast(o));
}
pub fn lean_sarray_elem_size(arg_o: ?*lean_object) callconv(.c) c_uint {
    var o = arg_o;
    _ = &o;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_sarray(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 938), "lean_is_sarray(o)");
        }
    }
    return lean_ptr_other(o);
}
pub fn lean_sarray_capacity(arg_o: ?*lean_object) callconv(.c) usize {
    var o = arg_o;
    _ = &o;
    return lean_to_sarray(o).*.m_capacity;
}
pub fn lean_sarray_byte_size(arg_o: ?*lean_object) callconv(.c) usize {
    var o = arg_o;
    _ = &o;
    return @sizeOf(lean_sarray_object) +% (@as(usize, @bitCast(@as(c_ulong, lean_sarray_elem_size(o)))) *% lean_sarray_capacity(o));
}
pub fn lean_sarray_size(arg_o: b_lean_obj_arg) callconv(.c) usize {
    var o = arg_o;
    _ = &o;
    return lean_to_sarray(o).*.m_size;
}
pub fn lean_sarray_data_byte_size(arg_o: ?*lean_object) callconv(.c) usize {
    var o = arg_o;
    _ = &o;
    return @sizeOf(lean_sarray_object) +% (@as(usize, @bitCast(@as(c_ulong, lean_sarray_elem_size(o)))) *% lean_sarray_size(o));
}
pub fn lean_sarray_set_size(arg_o: u_lean_obj_arg, arg_sz: usize) callconv(.c) void {
    var o = arg_o;
    _ = &o;
    var sz = arg_sz;
    _ = &sz;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_exclusive(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 950), "lean_is_exclusive(o)");
        }
    }
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(sz <= lean_sarray_capacity(o)))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 951), "sz <= lean_sarray_capacity(o)");
        }
    }
    lean_to_sarray(o).*.m_size = sz;
}
pub fn lean_sarray_cptr(arg_o: ?*lean_object) callconv(.c) [*c]u8 {
    var o = arg_o;
    _ = &o;
    return lean_to_sarray(o).*.m_data();
}
pub extern fn lean_byte_array_mk(a: lean_obj_arg) lean_obj_res;
pub extern fn lean_byte_array_data(a: lean_obj_arg) lean_obj_res;
pub extern fn lean_copy_byte_array(a: lean_obj_arg) lean_obj_res;
pub extern fn lean_byte_array_hash(a: b_lean_obj_arg) u64;
pub fn lean_mk_empty_byte_array(arg_capacity: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var capacity = arg_capacity;
    _ = &capacity;
    if (!lean_is_scalar(capacity)) {
        lean_internal_panic_out_of_memory();
    }
    return lean_alloc_sarray(@as(c_uint, @bitCast(@as(c_int, 1))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), lean_unbox(capacity));
}
pub fn lean_byte_array_size(arg_a: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    return lean_box(lean_sarray_size(a));
}
pub fn lean_byte_array_uget(arg_a: b_lean_obj_arg, arg_i: usize) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!(i < lean_sarray_size(a)))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 974), "i < lean_sarray_size(a)");
        }
    }
    return lean_sarray_cptr(a)[i];
}
pub fn lean_byte_array_get(arg_a: b_lean_obj_arg, arg_i: b_lean_obj_arg) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    if (lean_is_scalar(i)) {
        var idx: usize = lean_unbox(i);
        _ = &idx;
        return @as(u8, @bitCast(@as(i8, @truncate(if (idx < lean_sarray_size(a)) @as(c_int, @bitCast(@as(c_uint, lean_byte_array_uget(a, idx)))) else @as(c_int, 0)))));
    } else {
        return 0;
    }
    return @import("std").mem.zeroes(u8);
}
pub fn lean_byte_array_fget(arg_a: b_lean_obj_arg, arg_i: b_lean_obj_arg) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    return lean_byte_array_uget(a, lean_unbox(i));
}
pub extern fn lean_byte_array_push(a: lean_obj_arg, b: u8) lean_obj_res;
pub fn lean_byte_array_uset(arg_a: lean_obj_arg, arg_i: usize, arg_v: u8) callconv(.c) ?*lean_object {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    var v = arg_v;
    _ = &v;
    var r: lean_obj_res = undefined;
    _ = &r;
    if (lean_is_exclusive(a)) {
        r = a;
    } else {
        r = lean_copy_byte_array(a);
    }
    var it: [*c]u8 = lean_sarray_cptr(r) + i;
    _ = &it;
    it.* = v;
    return r;
}
pub fn lean_byte_array_set(arg_a: lean_obj_arg, arg_i: b_lean_obj_arg, arg_b: u8) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    var b = arg_b;
    _ = &b;
    if (!lean_is_scalar(i)) {
        return a;
    } else {
        var idx: usize = lean_unbox(i);
        _ = &idx;
        if (idx >= lean_sarray_size(a)) {
            return a;
        } else {
            return lean_byte_array_uset(a, idx, b);
        }
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_byte_array_fset(arg_a: lean_obj_arg, arg_i: b_lean_obj_arg, arg_b: u8) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    var b = arg_b;
    _ = &b;
    return lean_byte_array_uset(a, lean_unbox(i), b);
}
pub extern fn lean_float_array_mk(a: lean_obj_arg) lean_obj_res;
pub extern fn lean_float_array_data(a: lean_obj_arg) lean_obj_res;
pub extern fn lean_copy_float_array(a: lean_obj_arg) lean_obj_res;
pub fn lean_mk_empty_float_array(arg_capacity: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var capacity = arg_capacity;
    _ = &capacity;
    if (!lean_is_scalar(capacity)) {
        lean_internal_panic_out_of_memory();
    }
    return lean_alloc_sarray(@as(c_uint, @bitCast(@as(c_uint, @truncate(@sizeOf(f64))))), @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))), lean_unbox(capacity));
}
pub fn lean_float_array_size(arg_a: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    return lean_box(lean_sarray_size(a));
}
pub fn lean_float_array_cptr(arg_a: b_lean_obj_arg) callconv(.c) [*c]f64 {
    var a = arg_a;
    _ = &a;
    return @as([*c]f64, @ptrCast(@alignCast(lean_sarray_cptr(a))));
}
pub fn lean_float_array_uget(arg_a: b_lean_obj_arg, arg_i: usize) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    return lean_float_array_cptr(a)[i];
}
pub fn lean_float_array_fget(arg_a: b_lean_obj_arg, arg_i: b_lean_obj_arg) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    return lean_float_array_uget(a, lean_unbox(i));
}
pub fn lean_float_array_get(arg_a: b_lean_obj_arg, arg_i: b_lean_obj_arg) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    if (lean_is_scalar(i)) {
        var idx: usize = lean_unbox(i);
        _ = &idx;
        return if (idx < lean_sarray_size(a)) lean_float_array_uget(a, idx) else 0.0;
    } else {
        return 0.0;
    }
    return 0;
}
pub extern fn lean_float_array_push(a: lean_obj_arg, d: f64) lean_obj_res;
pub fn lean_float_array_uset(arg_a: lean_obj_arg, arg_i: usize, arg_d: f64) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    var d = arg_d;
    _ = &d;
    var r: lean_obj_res = undefined;
    _ = &r;
    if (lean_is_exclusive(a)) {
        r = a;
    } else {
        r = lean_copy_float_array(a);
    }
    var it: [*c]f64 = lean_float_array_cptr(r) + i;
    _ = &it;
    it.* = d;
    return r;
}
pub fn lean_float_array_fset(arg_a: lean_obj_arg, arg_i: b_lean_obj_arg, arg_d: f64) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    var d = arg_d;
    _ = &d;
    return lean_float_array_uset(a, lean_unbox(i), d);
}
pub fn lean_float_array_set(arg_a: lean_obj_arg, arg_i: b_lean_obj_arg, arg_d: f64) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    var i = arg_i;
    _ = &i;
    var d = arg_d;
    _ = &d;
    if (!lean_is_scalar(i)) {
        return a;
    } else {
        var idx: usize = lean_unbox(i);
        _ = &idx;
        if (idx >= lean_sarray_size(a)) {
            return a;
        } else {
            return lean_float_array_uset(a, idx, d);
        }
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_alloc_string(arg_size: usize, arg_capacity: usize, arg_len: usize) callconv(.c) lean_obj_res {
    var size = arg_size;
    _ = &size;
    var capacity = arg_capacity;
    _ = &capacity;
    var len = arg_len;
    _ = &len;
    var o: ?*lean_string_object = @as(?*lean_string_object, @ptrCast(@alignCast(lean_alloc_object(@sizeOf(lean_string_object) +% capacity))));
    _ = &o;
    lean_set_st_header(@as(?*lean_object, @ptrCast(o)), @as(c_uint, @bitCast(@as(c_int, 249))), @as(c_uint, @bitCast(@as(c_int, 0))));
    o.*.m_size = size;
    o.*.m_capacity = capacity;
    o.*.m_length = len;
    return @as(?*lean_object, @ptrCast(o));
}
pub extern fn lean_utf8_strlen(str: [*c]const u8) usize;
pub extern fn lean_utf8_n_strlen(str: [*c]const u8, n: usize) usize;
pub fn lean_string_capacity(arg_o: ?*lean_object) callconv(.c) usize {
    var o = arg_o;
    _ = &o;
    return lean_to_string(o).*.m_capacity;
}
pub fn lean_string_byte_size(arg_o: ?*lean_object) callconv(.c) usize {
    var o = arg_o;
    _ = &o;
    return @sizeOf(lean_string_object) +% lean_string_capacity(o);
}
pub fn lean_char_default_value() callconv(.c) u32 {
    return 'A';
}
pub extern fn lean_mk_string_unchecked(s: [*c]const u8, sz: usize, len: usize) lean_obj_res;
pub extern fn lean_mk_string_from_bytes(s: [*c]const u8, sz: usize) lean_obj_res;
pub extern fn lean_mk_string_from_bytes_unchecked(s: [*c]const u8, sz: usize) lean_obj_res;
pub extern fn lean_mk_ascii_string_unchecked(s: [*c]const u8) lean_obj_res;
pub extern fn lean_mk_string(s: [*c]const u8) lean_obj_res;
pub fn lean_string_cstr(arg_o: b_lean_obj_arg) callconv(.c) [*c]const u8 {
    var o = arg_o;
    _ = &o;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_string(o))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 1105), "lean_is_string(o)");
        }
    }
    return lean_to_string(o).*.m_data();
}
pub fn lean_string_size(arg_o: b_lean_obj_arg) callconv(.c) usize {
    var o = arg_o;
    _ = &o;
    return lean_to_string(o).*.m_size;
}
pub fn lean_string_len(arg_o: b_lean_obj_arg) callconv(.c) usize {
    var o = arg_o;
    _ = &o;
    return lean_to_string(o).*.m_length;
}
pub fn lean_string_data_byte_size(arg_o: ?*lean_object) callconv(.c) usize {
    var o = arg_o;
    _ = &o;
    return @sizeOf(lean_string_object) +% lean_string_size(o);
}
pub extern fn lean_string_push(s: lean_obj_arg, c: u32) lean_obj_res;
pub extern fn lean_string_append(s1: lean_obj_arg, s2: b_lean_obj_arg) lean_obj_res;
pub fn lean_string_length(arg_s: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var s = arg_s;
    _ = &s;
    return lean_box(lean_string_len(s));
}
pub extern fn lean_string_mk(cs: lean_obj_arg) lean_obj_res;
pub extern fn lean_string_data(s: lean_obj_arg) lean_obj_res;
pub extern fn lean_string_utf8_get(s: b_lean_obj_arg, i: b_lean_obj_arg) u32;
pub extern fn lean_string_utf8_get_fast_cold(str: [*c]const u8, i: usize, size: usize, c: u8) u32;
pub fn lean_string_utf8_get_fast(arg_s: b_lean_obj_arg, arg_i: b_lean_obj_arg) callconv(.c) u32 {
    var s = arg_s;
    _ = &s;
    var i = arg_i;
    _ = &i;
    var str: [*c]const u8 = lean_string_cstr(s);
    _ = &str;
    var idx: usize = lean_unbox(i);
    _ = &idx;
    var c: u8 = @as(u8, @bitCast(str[idx]));
    _ = &c;
    if ((@as(c_int, @bitCast(@as(c_uint, c))) & @as(c_int, 128)) == @as(c_int, 0)) return @as(u32, @bitCast(@as(c_uint, c)));
    return lean_string_utf8_get_fast_cold(str, idx, lean_string_size(s), c);
}
pub fn lean_string_get_byte_fast(arg_s: b_lean_obj_arg, arg_i: b_lean_obj_arg) callconv(.c) u8 {
    var s = arg_s;
    _ = &s;
    var i = arg_i;
    _ = &i;
    var str: [*c]const u8 = lean_string_cstr(s);
    _ = &str;
    var idx: usize = lean_unbox(i);
    _ = &idx;
    return @as(u8, @bitCast(str[idx]));
}
pub extern fn lean_string_utf8_next(s: b_lean_obj_arg, i: b_lean_obj_arg) lean_obj_res;
pub extern fn lean_string_utf8_next_fast_cold(i: usize, c: u8) lean_obj_res;
pub fn lean_string_utf8_next_fast(arg_s: b_lean_obj_arg, arg_i: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var s = arg_s;
    _ = &s;
    var i = arg_i;
    _ = &i;
    var str: [*c]const u8 = lean_string_cstr(s);
    _ = &str;
    var idx: usize = lean_unbox(i);
    _ = &idx;
    var c: u8 = @as(u8, @bitCast(str[idx]));
    _ = &c;
    if ((@as(c_int, @bitCast(@as(c_uint, c))) & @as(c_int, 128)) == @as(c_int, 0)) return lean_box(idx +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
    return lean_string_utf8_next_fast_cold(idx, c);
}
pub extern fn lean_string_utf8_prev(s: b_lean_obj_arg, i: b_lean_obj_arg) lean_obj_res;
pub extern fn lean_string_utf8_set(s: lean_obj_arg, i: b_lean_obj_arg, c: u32) lean_obj_res;
pub fn lean_string_utf8_at_end(arg_s: b_lean_obj_arg, arg_i: b_lean_obj_arg) callconv(.c) u8 {
    var s = arg_s;
    _ = &s;
    var i = arg_i;
    _ = &i;
    return @as(u8, @intFromBool(!lean_is_scalar(i) or (lean_unbox(i) >= (lean_string_size(s) -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))));
}
pub extern fn lean_string_utf8_extract(s: b_lean_obj_arg, b: b_lean_obj_arg, e: b_lean_obj_arg) lean_obj_res;
pub fn lean_string_utf8_byte_size(arg_s: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var s = arg_s;
    _ = &s;
    return lean_box(lean_string_size(s) -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))));
}
pub extern fn lean_string_eq_cold(s1: b_lean_obj_arg, s2: b_lean_obj_arg) bool;
pub fn lean_string_eq(arg_s1: b_lean_obj_arg, arg_s2: b_lean_obj_arg) callconv(.c) bool {
    var s1 = arg_s1;
    _ = &s1;
    var s2 = arg_s2;
    _ = &s2;
    return (s1 == s2) or ((lean_string_size(s1) == lean_string_size(s2)) and (@as(c_int, @intFromBool(lean_string_eq_cold(s1, s2))) != 0));
}
pub fn lean_string_ne(arg_s1: b_lean_obj_arg, arg_s2: b_lean_obj_arg) callconv(.c) bool {
    var s1 = arg_s1;
    _ = &s1;
    var s2 = arg_s2;
    _ = &s2;
    return !lean_string_eq(s1, s2);
}
pub extern fn lean_string_lt(s1: b_lean_obj_arg, s2: b_lean_obj_arg) bool;
pub fn lean_string_dec_eq(arg_s1: b_lean_obj_arg, arg_s2: b_lean_obj_arg) callconv(.c) u8 {
    var s1 = arg_s1;
    _ = &s1;
    var s2 = arg_s2;
    _ = &s2;
    return @as(u8, @intFromBool(lean_string_eq(s1, s2)));
}
pub fn lean_string_dec_lt(arg_s1: b_lean_obj_arg, arg_s2: b_lean_obj_arg) callconv(.c) u8 {
    var s1 = arg_s1;
    _ = &s1;
    var s2 = arg_s2;
    _ = &s2;
    return @as(u8, @intFromBool(lean_string_lt(s1, s2)));
}
pub extern fn lean_string_hash(b_lean_obj_arg) u64;
pub extern fn lean_string_of_usize(usize) lean_obj_res;
pub extern fn lean_slice_memcmp(s1: b_lean_obj_arg, s2: b_lean_obj_arg, lstart: b_lean_obj_arg, rstart: b_lean_obj_arg, len: b_lean_obj_arg) u8;
pub extern fn lean_slice_hash(b_lean_obj_arg) u64;
pub extern fn lean_slice_dec_lt(s1: b_lean_obj_arg, s2: b_lean_obj_arg) u8;
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:1167:20: warning: unsupported CastKind NonAtomicToAtomic

// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:1164:28: warning: unable to translate function, demoted to extern
pub extern fn lean_mk_thunk(arg_c: lean_obj_arg) callconv(.c) lean_obj_res;
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:1176:20: warning: unsupported CastKind NonAtomicToAtomic

// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:1173:28: warning: unable to translate function, demoted to extern
pub extern fn lean_thunk_pure(arg_v: lean_obj_arg) callconv(.c) lean_obj_res;
pub extern fn lean_thunk_get_core(t: ?*lean_object) ?*lean_object;
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:1184:23: warning: unsupported CastKind AtomicToNonAtomic

// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:1183:30: warning: unable to translate function, demoted to extern
pub extern fn lean_thunk_get(arg_t: b_lean_obj_arg) callconv(.c) b_lean_obj_res;
pub fn lean_thunk_get_own(arg_t: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var t = arg_t;
    _ = &t;
    var r: ?*lean_object = lean_thunk_get(t);
    _ = &r;
    lean_inc(r);
    return r;
}
pub extern fn lean_init_task_manager() void;
pub extern fn lean_init_task_manager_using(num_workers: c_uint) void;
pub extern fn lean_finalize_task_manager() void;
pub extern fn lean_task_spawn_core(c: lean_obj_arg, prio: c_uint, keep_alive: bool) lean_obj_res;
pub fn lean_task_spawn(arg_c: lean_obj_arg, arg_prio: lean_obj_arg) callconv(.c) lean_obj_res {
    var c = arg_c;
    _ = &c;
    var prio = arg_prio;
    _ = &prio;
    return lean_task_spawn_core(c, @as(c_uint, @bitCast(@as(c_uint, @truncate(lean_unbox(prio))))), @as(c_int, 0) != 0);
}
pub extern fn lean_task_pure(a: lean_obj_arg) lean_obj_res;
pub extern fn lean_task_bind_core(x: lean_obj_arg, f: lean_obj_arg, prio: c_uint, sync: bool, keep_alive: bool) lean_obj_res;
pub fn lean_task_bind(arg_x: lean_obj_arg, arg_f: lean_obj_arg, arg_prio: lean_obj_arg, arg_sync: u8) callconv(.c) lean_obj_res {
    var x = arg_x;
    _ = &x;
    var f = arg_f;
    _ = &f;
    var prio = arg_prio;
    _ = &prio;
    var sync = arg_sync;
    _ = &sync;
    return lean_task_bind_core(x, f, @as(c_uint, @bitCast(@as(c_uint, @truncate(lean_unbox(prio))))), sync != 0, @as(c_int, 0) != 0);
}
pub extern fn lean_task_map_core(f: lean_obj_arg, t: lean_obj_arg, prio: c_uint, sync: bool, keep_alive: bool) lean_obj_res;
pub fn lean_task_map(arg_f: lean_obj_arg, arg_t: lean_obj_arg, arg_prio: lean_obj_arg, arg_sync: u8) callconv(.c) lean_obj_res {
    var f = arg_f;
    _ = &f;
    var t = arg_t;
    _ = &t;
    var prio = arg_prio;
    _ = &prio;
    var sync = arg_sync;
    _ = &sync;
    return lean_task_map_core(f, t, @as(c_uint, @bitCast(@as(c_uint, @truncate(lean_unbox(prio))))), sync != 0, @as(c_int, 0) != 0);
}
pub extern fn lean_task_get(t: b_lean_obj_arg) b_lean_obj_res;
pub fn lean_task_get_own(arg_t: lean_obj_arg) callconv(.c) lean_obj_res {
    var t = arg_t;
    _ = &t;
    var r: ?*lean_object = lean_task_get(t);
    _ = &r;
    lean_inc(r);
    lean_dec(t);
    return r;
}
pub extern fn lean_io_check_canceled_core() bool;
pub extern fn lean_io_cancel_core(t: b_lean_obj_arg) void;
pub extern fn lean_io_get_task_state_core(t: b_lean_obj_arg) u8;
pub extern fn lean_io_wait_any_core(task_list: b_lean_obj_arg) b_lean_obj_res;
pub fn lean_alloc_external(arg_cls: [*c]lean_external_class, arg_data: ?*anyopaque) callconv(.c) ?*lean_object {
    var cls = arg_cls;
    _ = &cls;
    var data = arg_data;
    _ = &data;
    var o: ?*lean_external_object = @as(?*lean_external_object, @ptrCast(@alignCast(lean_alloc_small_object(@as(c_uint, @bitCast(@as(c_uint, @truncate(@sizeOf(lean_external_object)))))))));
    _ = &o;
    lean_set_st_header(@as(?*lean_object, @ptrCast(o)), @as(c_uint, @bitCast(@as(c_int, 254))), @as(c_uint, @bitCast(@as(c_int, 0))));
    o.*.m_class = cls;
    o.*.m_data = data;
    return @as(?*lean_object, @ptrCast(o));
}
pub fn lean_get_external_class(arg_o: ?*lean_object) callconv(.c) [*c]lean_external_class {
    var o = arg_o;
    _ = &o;
    return lean_to_external(o).*.m_class;
}
pub fn lean_get_external_data(arg_o: ?*lean_object) callconv(.c) ?*anyopaque {
    var o = arg_o;
    _ = &o;
    return lean_to_external(o).*.m_data;
}
pub fn lean_set_external_data(arg_o: ?*lean_object, arg_data: ?*anyopaque) callconv(.c) ?*lean_object {
    var o = arg_o;
    _ = &o;
    var data = arg_data;
    _ = &data;
    if (lean_is_exclusive(o)) {
        lean_to_external(o).*.m_data = data;
        return o;
    } else {
        var o_new: ?*lean_object = lean_alloc_external(lean_get_external_class(o), data);
        _ = &o_new;
        lean_dec_ref(o);
        return o_new;
    }
    return null;
}
pub extern fn lean_nat_big_succ(a: ?*lean_object) ?*lean_object;
pub extern fn lean_nat_big_add(a1: ?*lean_object, a2: ?*lean_object) ?*lean_object;
pub extern fn lean_nat_big_sub(a1: ?*lean_object, a2: ?*lean_object) ?*lean_object;
pub extern fn lean_nat_big_mul(a1: ?*lean_object, a2: ?*lean_object) ?*lean_object;
pub extern fn lean_nat_overflow_mul(a1: usize, a2: usize) ?*lean_object;
pub extern fn lean_nat_big_div(a1: ?*lean_object, a2: ?*lean_object) ?*lean_object;
pub extern fn lean_nat_big_div_exact(a1: ?*lean_object, a2: ?*lean_object) ?*lean_object;
pub extern fn lean_nat_big_mod(a1: ?*lean_object, a2: ?*lean_object) ?*lean_object;
pub extern fn lean_nat_big_eq(a1: ?*lean_object, a2: ?*lean_object) bool;
pub extern fn lean_nat_big_le(a1: ?*lean_object, a2: ?*lean_object) bool;
pub extern fn lean_nat_big_lt(a1: ?*lean_object, a2: ?*lean_object) bool;
pub extern fn lean_nat_big_land(a1: ?*lean_object, a2: ?*lean_object) ?*lean_object;
pub extern fn lean_nat_big_lor(a1: ?*lean_object, a2: ?*lean_object) ?*lean_object;
pub extern fn lean_nat_big_xor(a1: ?*lean_object, a2: ?*lean_object) ?*lean_object;
pub extern fn lean_cstr_to_nat(n: [*c]const u8) lean_obj_res;
pub extern fn lean_big_usize_to_nat(n: usize) lean_obj_res;
pub extern fn lean_big_uint64_to_nat(n: u64) lean_obj_res;
pub fn lean_usize_to_nat(arg_n: usize) callconv(.c) lean_obj_res {
    var n = arg_n;
    _ = &n;
    if (__builtin_expect(@as(c_long, @intFromBool(n <= (@as(c_ulong, 18446744073709551615) >> @intCast(1)))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) return lean_box(n) else return lean_big_usize_to_nat(n);
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_unsigned_to_nat(arg_n: c_uint) callconv(.c) lean_obj_res {
    var n = arg_n;
    _ = &n;
    return lean_usize_to_nat(@as(usize, @bitCast(@as(c_ulong, n))));
}
pub fn lean_uint64_to_nat(arg_n: u64) callconv(.c) lean_obj_res {
    var n = arg_n;
    _ = &n;
    if (__builtin_expect(@as(c_long, @intFromBool(n <= (@as(c_ulong, 18446744073709551615) >> @intCast(1)))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) return lean_box(n) else return lean_big_uint64_to_nat(n);
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_nat_succ(arg_a: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    if (__builtin_expect(@as(c_long, @intFromBool(lean_is_scalar(a))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) return lean_usize_to_nat(lean_unbox(a) +% @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) else return lean_nat_big_succ(a);
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_nat_add(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) return lean_usize_to_nat(lean_unbox(a1) +% lean_unbox(a2)) else return lean_nat_big_add(a1, a2);
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_nat_sub(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        var n1: usize = lean_unbox(a1);
        _ = &n1;
        var n2: usize = lean_unbox(a2);
        _ = &n2;
        if (n1 < n2) return lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) else return lean_box(n1 -% n2);
    } else {
        return lean_nat_big_sub(a1, a2);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_nat_mul(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        var n1: usize = lean_unbox(a1);
        _ = &n1;
        if (n1 == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) return a1;
        var n2: usize = lean_unbox(a2);
        _ = &n2;
        var r: usize = n1 *% n2;
        _ = &r;
        if ((r <= (@as(c_ulong, 18446744073709551615) >> @intCast(1))) and ((r / n1) == n2)) return lean_box(r) else return lean_nat_overflow_mul(n1, n2);
    } else {
        return lean_nat_big_mul(a1, a2);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_nat_div(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        var n1: usize = lean_unbox(a1);
        _ = &n1;
        var n2: usize = lean_unbox(a2);
        _ = &n2;
        if (n2 == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) return lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) else return lean_box(n1 / n2);
    } else {
        return lean_nat_big_div(a1, a2);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_nat_div_exact(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        var n1: usize = lean_unbox(a1);
        _ = &n1;
        var n2: usize = lean_unbox(a2);
        _ = &n2;
        if (n2 == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) return lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) else return lean_box(n1 / n2);
    } else {
        return lean_nat_big_div_exact(a1, a2);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_nat_mod(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        var n1: usize = lean_unbox(a1);
        _ = &n1;
        var n2: usize = lean_unbox(a2);
        _ = &n2;
        if (n2 == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) return lean_box(n1) else return lean_box(n1 % n2);
    } else {
        return lean_nat_big_mod(a1, a2);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_nat_eq(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) bool {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        return a1 == a2;
    } else {
        return lean_nat_big_eq(a1, a2);
    }
    return false;
}
pub fn lean_nat_dec_eq(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(lean_nat_eq(a1, a2)));
}
pub fn lean_nat_ne(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) bool {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return !lean_nat_eq(a1, a2);
}
pub fn lean_nat_le(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) bool {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        return a1 <= a2;
    } else {
        return lean_nat_big_le(a1, a2);
    }
    return false;
}
pub fn lean_nat_dec_le(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(lean_nat_le(a1, a2)));
}
pub fn lean_nat_lt(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) bool {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        return a1 < a2;
    } else {
        return lean_nat_big_lt(a1, a2);
    }
    return false;
}
pub fn lean_nat_dec_lt(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(lean_nat_lt(a1, a2)));
}
pub fn lean_nat_land(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        return @as(?*lean_object, @ptrFromInt(@as(usize, @intCast(@intFromPtr(a1))) & @as(usize, @intCast(@intFromPtr(a2)))));
    } else {
        return lean_nat_big_land(a1, a2);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_nat_lor(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        return @as(?*lean_object, @ptrFromInt(@as(usize, @intCast(@intFromPtr(a1))) | @as(usize, @intCast(@intFromPtr(a2)))));
    } else {
        return lean_nat_big_lor(a1, a2);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_nat_lxor(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        return lean_box(lean_unbox(a1) ^ lean_unbox(a2));
    } else {
        return lean_nat_big_xor(a1, a2);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub extern fn lean_nat_shiftl(a1: b_lean_obj_arg, a2: b_lean_obj_arg) lean_obj_res;
pub extern fn lean_nat_big_shiftr(a1: b_lean_obj_arg, a2: b_lean_obj_arg) lean_obj_res;
pub extern fn lean_nat_pow(a1: b_lean_obj_arg, a2: b_lean_obj_arg) lean_obj_res;
pub extern fn lean_nat_gcd(a1: b_lean_obj_arg, a2: b_lean_obj_arg) lean_obj_res;
pub extern fn lean_nat_log2(a: b_lean_obj_arg) lean_obj_res;
pub fn lean_nat_shiftr(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        var s1: usize = lean_unbox(a1);
        _ = &s1;
        var s2: usize = lean_unbox(a2);
        _ = &s2;
        var r: usize = if (s2 < (@sizeOf(usize) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8)))))) s1 >> @intCast(s2) else @as(usize, @bitCast(@as(c_long, @as(c_int, 0))));
        _ = &r;
        return lean_box(r);
    } else {
        return lean_nat_big_shiftr(a1, a2);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub extern fn lean_int_big_neg(a: ?*lean_object) ?*lean_object;
pub extern fn lean_int_big_add(a1: ?*lean_object, a2: ?*lean_object) ?*lean_object;
pub extern fn lean_int_big_sub(a1: ?*lean_object, a2: ?*lean_object) ?*lean_object;
pub extern fn lean_int_big_mul(a1: ?*lean_object, a2: ?*lean_object) ?*lean_object;
pub extern fn lean_int_big_div(a1: ?*lean_object, a2: ?*lean_object) ?*lean_object;
pub extern fn lean_int_big_div_exact(a1: ?*lean_object, a2: ?*lean_object) ?*lean_object;
pub extern fn lean_int_big_mod(a1: ?*lean_object, a2: ?*lean_object) ?*lean_object;
pub extern fn lean_int_big_ediv(a1: ?*lean_object, a2: ?*lean_object) ?*lean_object;
pub extern fn lean_int_big_emod(a1: ?*lean_object, a2: ?*lean_object) ?*lean_object;
pub extern fn lean_int_big_eq(a1: ?*lean_object, a2: ?*lean_object) bool;
pub extern fn lean_int_big_le(a1: ?*lean_object, a2: ?*lean_object) bool;
pub extern fn lean_int_big_lt(a1: ?*lean_object, a2: ?*lean_object) bool;
pub extern fn lean_int_big_nonneg(a: ?*lean_object) bool;
pub extern fn lean_cstr_to_int(n: [*c]const u8) ?*lean_object;
pub extern fn lean_big_int_to_int(n: c_int) ?*lean_object;
pub extern fn lean_big_size_t_to_int(n: usize) ?*lean_object;
pub extern fn lean_big_int64_to_int(n: i64) ?*lean_object;
pub fn lean_int_to_int(arg_n: c_int) callconv(.c) lean_obj_res {
    var n = arg_n;
    _ = &n;
    if (@sizeOf(?*anyopaque) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) return lean_box(@as(usize, @bitCast(@as(c_ulong, @as(c_uint, @bitCast(n)))))) else if (((if (@sizeOf(?*anyopaque) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) -@as(c_int, 2147483647) - @as(c_int, 1) else (-@as(c_int, 2147483647) - @as(c_int, 1)) >> @intCast(1)) <= n) and (n <= (if (@sizeOf(?*anyopaque) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) @as(c_int, 2147483647) else @as(c_int, 2147483647) >> @intCast(1)))) return lean_box(@as(usize, @bitCast(@as(c_ulong, @as(c_uint, @bitCast(n)))))) else return lean_big_int_to_int(n);
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_int64_to_int(arg_n: i64) callconv(.c) lean_obj_res {
    var n = arg_n;
    _ = &n;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(i64, @bitCast(@as(c_long, if (@sizeOf(?*anyopaque) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) -@as(c_int, 2147483647) - @as(c_int, 1) else (-@as(c_int, 2147483647) - @as(c_int, 1)) >> @intCast(1)))) <= n) and (n <= @as(i64, @bitCast(@as(c_long, if (@sizeOf(?*anyopaque) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) @as(c_int, 2147483647) else @as(c_int, 2147483647) >> @intCast(1))))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) return lean_box(@as(usize, @bitCast(@as(c_ulong, @as(c_uint, @bitCast(@as(c_int, @bitCast(@as(c_int, @truncate(n)))))))))) else return lean_big_int64_to_int(n);
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_scalar_to_int64(arg_a: b_lean_obj_arg) callconv(.c) i64 {
    var a = arg_a;
    _ = &a;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_scalar(a))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 1508), "lean_is_scalar(a)");
        }
    }
    if (@sizeOf(?*anyopaque) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) return @as(i64, @bitCast(@as(c_long, @as(c_int, @bitCast(@as(c_uint, @bitCast(@as(c_uint, @truncate(lean_unbox(a)))))))))) else return @as(i64, @bitCast(@as(c_long, @as(c_int, @bitCast(@as(c_uint, @truncate(@as(usize, @intCast(@intFromPtr(a))))))) >> @intCast(1))));
    return @import("std").mem.zeroes(i64);
}
pub fn lean_scalar_to_int(arg_a: b_lean_obj_arg) callconv(.c) c_int {
    var a = arg_a;
    _ = &a;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_is_scalar(a))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 1516), "lean_is_scalar(a)");
        }
    }
    if (@sizeOf(?*anyopaque) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) return @as(c_int, @bitCast(@as(c_uint, @bitCast(@as(c_uint, @truncate(lean_unbox(a))))))) else return @as(c_int, @bitCast(@as(c_uint, @truncate(@as(usize, @intCast(@intFromPtr(a))))))) >> @intCast(1);
    return 0;
}
pub fn lean_nat_to_int(arg_a: lean_obj_arg) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    if (lean_is_scalar(a)) {
        var v: usize = lean_unbox(a);
        _ = &v;
        if (v <= @as(usize, @bitCast(@as(c_long, if (@sizeOf(?*anyopaque) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) @as(c_int, 2147483647) else @as(c_int, 2147483647) >> @intCast(1))))) return a else return lean_big_size_t_to_int(v);
    } else {
        return a;
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_int_neg(arg_a: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    if (__builtin_expect(@as(c_long, @intFromBool(lean_is_scalar(a))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        return lean_int64_to_int(-lean_scalar_to_int64(a));
    } else {
        return lean_int_big_neg(a);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_int_neg_succ_of_nat(arg_a: lean_obj_arg) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    var s: lean_obj_res = lean_nat_succ(a);
    _ = &s;
    lean_dec(a);
    var i: lean_obj_res = lean_nat_to_int(s);
    _ = &i;
    var r: lean_obj_res = lean_int_neg(i);
    _ = &r;
    lean_dec(i);
    return r;
}
pub fn lean_int_add(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        return lean_int64_to_int(lean_scalar_to_int64(a1) + lean_scalar_to_int64(a2));
    } else {
        return lean_int_big_add(a1, a2);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_int_sub(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        return lean_int64_to_int(lean_scalar_to_int64(a1) - lean_scalar_to_int64(a2));
    } else {
        return lean_int_big_sub(a1, a2);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_int_mul(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        return lean_int64_to_int(lean_scalar_to_int64(a1) * lean_scalar_to_int64(a2));
    } else {
        return lean_int_big_mul(a1, a2);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_int_div(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        if (@sizeOf(?*anyopaque) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) {
            var v1: i64 = @as(i64, @bitCast(@as(c_long, lean_scalar_to_int(a1))));
            _ = &v1;
            var v2: i64 = @as(i64, @bitCast(@as(c_long, lean_scalar_to_int(a2))));
            _ = &v2;
            if (v2 == @as(i64, @bitCast(@as(c_long, @as(c_int, 0))))) return lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) else return lean_int64_to_int(@divTrunc(v1, v2));
        } else {
            var v1: c_int = lean_scalar_to_int(a1);
            _ = &v1;
            var v2: c_int = lean_scalar_to_int(a2);
            _ = &v2;
            if (v2 == @as(c_int, 0)) return lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) else return lean_int_to_int(@divTrunc(v1, v2));
        }
    } else {
        return lean_int_big_div(a1, a2);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_int_div_exact(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        if (@sizeOf(?*anyopaque) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) {
            var v1: i64 = @as(i64, @bitCast(@as(c_long, lean_scalar_to_int(a1))));
            _ = &v1;
            var v2: i64 = @as(i64, @bitCast(@as(c_long, lean_scalar_to_int(a2))));
            _ = &v2;
            if (v2 == @as(i64, @bitCast(@as(c_long, @as(c_int, 0))))) return lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) else return lean_int64_to_int(@divTrunc(v1, v2));
        } else {
            var v1: c_int = lean_scalar_to_int(a1);
            _ = &v1;
            var v2: c_int = lean_scalar_to_int(a2);
            _ = &v2;
            if (v2 == @as(c_int, 0)) return lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) else return lean_int_to_int(@divTrunc(v1, v2));
        }
    } else {
        return lean_int_big_div_exact(a1, a2);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_int_mod(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        if (@sizeOf(?*anyopaque) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) {
            var v1: i64 = lean_scalar_to_int64(a1);
            _ = &v1;
            var v2: i64 = lean_scalar_to_int64(a2);
            _ = &v2;
            if (v2 == @as(i64, @bitCast(@as(c_long, @as(c_int, 0))))) return a1 else return lean_int64_to_int(@import("std").zig.c_translation.signedRemainder(v1, v2));
        } else {
            var v1: c_int = lean_scalar_to_int(a1);
            _ = &v1;
            var v2: c_int = lean_scalar_to_int(a2);
            _ = &v2;
            if (v2 == @as(c_int, 0)) return a1 else return lean_int_to_int(@import("std").zig.c_translation.signedRemainder(v1, v2));
        }
    } else {
        return lean_int_big_mod(a1, a2);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_int_ediv(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        if (@sizeOf(?*anyopaque) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) {
            var n: i64 = @as(i64, @bitCast(@as(c_long, lean_scalar_to_int(a1))));
            _ = &n;
            var d: i64 = @as(i64, @bitCast(@as(c_long, lean_scalar_to_int(a2))));
            _ = &d;
            if (d == @as(i64, @bitCast(@as(c_long, @as(c_int, 0))))) return lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) else {
                var q: i64 = @divTrunc(n, d);
                _ = &q;
                var r: i64 = @import("std").zig.c_translation.signedRemainder(n, d);
                _ = &r;
                if (r < @as(i64, @bitCast(@as(c_long, @as(c_int, 0))))) {
                    q = if (d > @as(i64, @bitCast(@as(c_long, @as(c_int, 0))))) q - @as(i64, @bitCast(@as(c_long, @as(c_int, 1)))) else q + @as(i64, @bitCast(@as(c_long, @as(c_int, 1))));
                }
                return lean_int64_to_int(q);
            }
        } else {
            var n: c_int = lean_scalar_to_int(a1);
            _ = &n;
            var d: c_int = lean_scalar_to_int(a2);
            _ = &d;
            if (d == @as(c_int, 0)) {
                return lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
            } else {
                var q: c_int = @divTrunc(n, d);
                _ = &q;
                var r: c_int = @import("std").zig.c_translation.signedRemainder(n, d);
                _ = &r;
                if (r < @as(c_int, 0)) {
                    q = if (d > @as(c_int, 0)) q - @as(c_int, 1) else q + @as(c_int, 1);
                }
                return lean_int_to_int(q);
            }
        }
    } else {
        return lean_int_big_ediv(a1, a2);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_int_emod(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        if (@sizeOf(?*anyopaque) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))) {
            var n: i64 = lean_scalar_to_int64(a1);
            _ = &n;
            var d: i64 = lean_scalar_to_int64(a2);
            _ = &d;
            if (d == @as(i64, @bitCast(@as(c_long, @as(c_int, 0))))) {
                return a1;
            } else {
                var r: i64 = @import("std").zig.c_translation.signedRemainder(n, d);
                _ = &r;
                if (r < @as(i64, @bitCast(@as(c_long, @as(c_int, 0))))) {
                    r = if (d > @as(i64, @bitCast(@as(c_long, @as(c_int, 0))))) r + d else r - d;
                }
                return lean_int64_to_int(r);
            }
        } else {
            var n: c_int = lean_scalar_to_int(a1);
            _ = &n;
            var d: c_int = lean_scalar_to_int(a2);
            _ = &d;
            if (d == @as(c_int, 0)) return a1 else {
                var r: c_int = @import("std").zig.c_translation.signedRemainder(n, d);
                _ = &r;
                if (r < @as(c_int, 0)) {
                    r = if (d > @as(c_int, 0)) r + d else r - d;
                }
                return lean_int_to_int(r);
            }
        }
    } else {
        return lean_int_big_emod(a1, a2);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_int_eq(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) bool {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        return a1 == a2;
    } else {
        return lean_int_big_eq(a1, a2);
    }
    return false;
}
pub fn lean_int_ne(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) bool {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return !lean_int_eq(a1, a2);
}
pub fn lean_int_le(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) bool {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        return lean_scalar_to_int(a1) <= lean_scalar_to_int(a2);
    } else {
        return lean_int_big_le(a1, a2);
    }
    return false;
}
pub fn lean_int_lt(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) bool {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    if (__builtin_expect(@as(c_long, @intFromBool((@as(c_int, @intFromBool(lean_is_scalar(a1))) != 0) and (@as(c_int, @intFromBool(lean_is_scalar(a2))) != 0))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) {
        return lean_scalar_to_int(a1) < lean_scalar_to_int(a2);
    } else {
        return lean_int_big_lt(a1, a2);
    }
    return false;
}
pub extern fn lean_big_int_to_nat(a: lean_obj_arg) lean_obj_res;
pub fn lean_int_to_nat(arg_a: lean_obj_arg) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!!lean_int_lt(a, lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 0)))))))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 1751), "!lean_int_lt(a, lean_box(0))");
        }
    }
    if (lean_is_scalar(a)) {
        return a;
    } else {
        return lean_big_int_to_nat(a);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_nat_abs(arg_i: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var i = arg_i;
    _ = &i;
    if (lean_int_lt(i, lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 0))))))) {
        return lean_int_to_nat(lean_int_neg(i));
    } else {
        lean_inc(i);
        return lean_int_to_nat(i);
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_int_dec_eq(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(lean_int_eq(a1, a2)));
}
pub fn lean_int_dec_le(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(lean_int_le(a1, a2)));
}
pub fn lean_int_dec_lt(arg_a1: b_lean_obj_arg, arg_a2: b_lean_obj_arg) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(lean_int_lt(a1, a2)));
}
pub fn lean_int_dec_nonneg(arg_a: b_lean_obj_arg) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    if (__builtin_expect(@as(c_long, @intFromBool(lean_is_scalar(a))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))))) != 0) return @as(u8, @intFromBool(lean_scalar_to_int(a) >= @as(c_int, 0))) else return @as(u8, @intFromBool(lean_int_big_nonneg(a)));
    return @import("std").mem.zeroes(u8);
}
pub fn lean_bool_to_uint8(arg_a: u8) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    return a;
}
pub fn lean_bool_to_uint16(arg_a: u8) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    return @as(u16, @bitCast(@as(c_ushort, a)));
}
pub fn lean_bool_to_uint32(arg_a: u8) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    return @as(u32, @bitCast(@as(c_uint, a)));
}
pub fn lean_bool_to_uint64(arg_a: u8) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    return @as(u64, @bitCast(@as(c_ulong, a)));
}
pub fn lean_bool_to_usize(arg_a: u8) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    return @as(usize, @bitCast(@as(c_ulong, a)));
}
pub fn lean_bool_to_int8(arg_a: u8) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    return @as(u8, @bitCast(@as(i8, @bitCast(a))));
}
pub fn lean_bool_to_int16(arg_a: u8) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    return @as(u16, @bitCast(@as(i16, @bitCast(@as(c_ushort, a)))));
}
pub fn lean_bool_to_int32(arg_a: u8) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    return @as(u32, @bitCast(@as(i32, @bitCast(@as(c_uint, a)))));
}
pub fn lean_bool_to_int64(arg_a: u8) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    return @as(u64, @bitCast(@as(i64, @bitCast(@as(c_ulong, a)))));
}
pub fn lean_bool_to_isize(arg_a: u8) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    return @as(usize, @bitCast(@as(ptrdiff_t, @bitCast(@as(c_ulong, a)))));
}
pub extern fn lean_uint8_of_big_nat(a: b_lean_obj_arg) u8;
pub fn lean_uint8_of_nat(arg_a: b_lean_obj_arg) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    return @as(u8, @bitCast(@as(i8, @truncate(if (@as(c_int, @intFromBool(lean_is_scalar(a))) != 0) @as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(@as(u8, @truncate(lean_unbox(a)))))))) else @as(c_int, @bitCast(@as(c_uint, lean_uint8_of_big_nat(a))))))));
}
pub fn lean_uint8_of_nat_mk(arg_a: lean_obj_arg) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var r: u8 = lean_uint8_of_nat(a);
    _ = &r;
    lean_dec(a);
    return r;
}
pub fn lean_uint8_to_nat(arg_a: u8) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    return lean_usize_to_nat(@as(usize, @bitCast(@as(c_ulong, a))));
}
pub fn lean_uint8_add(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, a1))) + @as(c_int, @bitCast(@as(c_uint, a2)))))));
}
pub fn lean_uint8_sub(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, a1))) - @as(c_int, @bitCast(@as(c_uint, a2)))))));
}
pub fn lean_uint8_mul(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, a1))) * @as(c_int, @bitCast(@as(c_uint, a2)))))));
}
pub fn lean_uint8_div(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @bitCast(@as(i8, @truncate(if (@as(c_int, @bitCast(@as(c_uint, a2))) == @as(c_int, 0)) @as(c_int, 0) else @divTrunc(@as(c_int, @bitCast(@as(c_uint, a1))), @as(c_int, @bitCast(@as(c_uint, a2))))))));
}
pub fn lean_uint8_mod(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @bitCast(@as(i8, @truncate(if (@as(c_int, @bitCast(@as(c_uint, a2))) == @as(c_int, 0)) @as(c_int, @bitCast(@as(c_uint, a1))) else @import("std").zig.c_translation.signedRemainder(@as(c_int, @bitCast(@as(c_uint, a1))), @as(c_int, @bitCast(@as(c_uint, a2))))))));
}
pub fn lean_uint8_land(arg_a: u8, arg_b: u8) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, a))) & @as(c_int, @bitCast(@as(c_uint, b)))))));
}
pub fn lean_uint8_lor(arg_a: u8, arg_b: u8) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, a))) | @as(c_int, @bitCast(@as(c_uint, b)))))));
}
pub fn lean_uint8_xor(arg_a: u8, arg_b: u8) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, a))) ^ @as(c_int, @bitCast(@as(c_uint, b)))))));
}
pub fn lean_uint8_shift_left(arg_a: u8, arg_b: u8) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, a))) << @intCast(@import("std").zig.c_translation.signedRemainder(@as(c_int, @bitCast(@as(c_uint, b))), @as(c_int, 8)))))));
}
pub fn lean_uint8_shift_right(arg_a: u8, arg_b: u8) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, a))) >> @intCast(@import("std").zig.c_translation.signedRemainder(@as(c_int, @bitCast(@as(c_uint, b))), @as(c_int, 8)))))));
}
pub fn lean_uint8_complement(arg_a: u8) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    return @as(u8, @bitCast(@as(i8, @truncate(~@as(c_int, @bitCast(@as(c_uint, a)))))));
}
pub fn lean_uint8_neg(arg_a: u8) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    return @as(u8, @bitCast(@as(i8, @truncate(-@as(c_int, @bitCast(@as(c_uint, a)))))));
}
pub fn lean_uint8_log2(arg_a: u8) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var res: u8 = 0;
    _ = &res;
    while (@as(c_int, @bitCast(@as(c_uint, a))) >= @as(c_int, 2)) {
        res +%= 1;
        a /= @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 2)))));
    }
    return res;
}
pub fn lean_uint8_dec_eq(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(@as(c_int, @bitCast(@as(c_uint, a1))) == @as(c_int, @bitCast(@as(c_uint, a2)))));
}
pub fn lean_uint8_dec_lt(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(@as(c_int, @bitCast(@as(c_uint, a1))) < @as(c_int, @bitCast(@as(c_uint, a2)))));
}
pub fn lean_uint8_dec_le(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(@as(c_int, @bitCast(@as(c_uint, a1))) <= @as(c_int, @bitCast(@as(c_uint, a2)))));
}
pub fn lean_uint8_to_uint16(arg_a: u8) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    return @as(u16, @bitCast(@as(c_ushort, a)));
}
pub fn lean_uint8_to_uint32(arg_a: u8) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    return @as(u32, @bitCast(@as(c_uint, a)));
}
pub fn lean_uint8_to_uint64(arg_a: u8) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    return @as(u64, @bitCast(@as(c_ulong, a)));
}
pub fn lean_uint8_to_usize(arg_a: u8) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    return @as(usize, @bitCast(@as(c_ulong, a)));
}
pub extern fn lean_uint16_of_big_nat(a: b_lean_obj_arg) u16;
pub fn lean_uint16_of_nat(arg_a: b_lean_obj_arg) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    return @as(u16, @bitCast(@as(c_short, @truncate(if (@as(c_int, @intFromBool(lean_is_scalar(a))) != 0) @as(c_int, @bitCast(@as(c_int, @as(i16, @bitCast(@as(c_ushort, @truncate(lean_unbox(a)))))))) else @as(c_int, @bitCast(@as(c_uint, lean_uint16_of_big_nat(a))))))));
}
pub fn lean_uint16_of_nat_mk(arg_a: lean_obj_arg) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    var r: u16 = lean_uint16_of_nat(a);
    _ = &r;
    lean_dec(a);
    return r;
}
pub fn lean_uint16_to_nat(arg_a: u16) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    return lean_usize_to_nat(@as(usize, @bitCast(@as(c_ulong, a))));
}
pub fn lean_uint16_add(arg_a1: u16, arg_a2: u16) callconv(.c) u16 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u16, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, a1))) + @as(c_int, @bitCast(@as(c_uint, a2)))))));
}
pub fn lean_uint16_sub(arg_a1: u16, arg_a2: u16) callconv(.c) u16 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u16, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, a1))) - @as(c_int, @bitCast(@as(c_uint, a2)))))));
}
pub fn lean_uint16_mul(arg_a1: u16, arg_a2: u16) callconv(.c) u16 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u16, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, a1))) * @as(c_int, @bitCast(@as(c_uint, a2)))))));
}
pub fn lean_uint16_div(arg_a1: u16, arg_a2: u16) callconv(.c) u16 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u16, @bitCast(@as(c_short, @truncate(if (@as(c_int, @bitCast(@as(c_uint, a2))) == @as(c_int, 0)) @as(c_int, 0) else @divTrunc(@as(c_int, @bitCast(@as(c_uint, a1))), @as(c_int, @bitCast(@as(c_uint, a2))))))));
}
pub fn lean_uint16_mod(arg_a1: u16, arg_a2: u16) callconv(.c) u16 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u16, @bitCast(@as(c_short, @truncate(if (@as(c_int, @bitCast(@as(c_uint, a2))) == @as(c_int, 0)) @as(c_int, @bitCast(@as(c_uint, a1))) else @import("std").zig.c_translation.signedRemainder(@as(c_int, @bitCast(@as(c_uint, a1))), @as(c_int, @bitCast(@as(c_uint, a2))))))));
}
pub fn lean_uint16_land(arg_a: u16, arg_b: u16) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return @as(u16, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, a))) & @as(c_int, @bitCast(@as(c_uint, b)))))));
}
pub fn lean_uint16_lor(arg_a: u16, arg_b: u16) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return @as(u16, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, a))) | @as(c_int, @bitCast(@as(c_uint, b)))))));
}
pub fn lean_uint16_xor(arg_a: u16, arg_b: u16) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return @as(u16, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, a))) ^ @as(c_int, @bitCast(@as(c_uint, b)))))));
}
pub fn lean_uint16_shift_left(arg_a: u16, arg_b: u16) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return @as(u16, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, a))) << @intCast(@import("std").zig.c_translation.signedRemainder(@as(c_int, @bitCast(@as(c_uint, b))), @as(c_int, 16)))))));
}
pub fn lean_uint16_shift_right(arg_a: u16, arg_b: u16) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return @as(u16, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, a))) >> @intCast(@import("std").zig.c_translation.signedRemainder(@as(c_int, @bitCast(@as(c_uint, b))), @as(c_int, 16)))))));
}
pub fn lean_uint16_complement(arg_a: u16) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    return @as(u16, @bitCast(@as(c_short, @truncate(~@as(c_int, @bitCast(@as(c_uint, a)))))));
}
pub fn lean_uint16_neg(arg_a: u16) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    return @as(u16, @bitCast(@as(c_short, @truncate(-@as(c_int, @bitCast(@as(c_uint, a)))))));
}
pub fn lean_uint16_log2(arg_a: u16) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    var res: u16 = 0;
    _ = &res;
    while (@as(c_int, @bitCast(@as(c_uint, a))) >= @as(c_int, 2)) {
        res +%= 1;
        a /= @as(u16, @bitCast(@as(c_short, @truncate(@as(c_int, 2)))));
    }
    return res;
}
pub fn lean_uint16_dec_eq(arg_a1: u16, arg_a2: u16) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(@as(c_int, @bitCast(@as(c_uint, a1))) == @as(c_int, @bitCast(@as(c_uint, a2)))));
}
pub fn lean_uint16_dec_lt(arg_a1: u16, arg_a2: u16) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(@as(c_int, @bitCast(@as(c_uint, a1))) < @as(c_int, @bitCast(@as(c_uint, a2)))));
}
pub fn lean_uint16_dec_le(arg_a1: u16, arg_a2: u16) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(@as(c_int, @bitCast(@as(c_uint, a1))) <= @as(c_int, @bitCast(@as(c_uint, a2)))));
}
pub fn lean_uint16_to_uint8(arg_a: u16) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    return @as(u8, @bitCast(@as(u8, @truncate(a))));
}
pub fn lean_uint16_to_uint32(arg_a: u16) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    return @as(u32, @bitCast(@as(c_uint, a)));
}
pub fn lean_uint16_to_uint64(arg_a: u16) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    return @as(u64, @bitCast(@as(c_ulong, a)));
}
pub fn lean_uint16_to_usize(arg_a: u16) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    return @as(usize, @bitCast(@as(c_ulong, a)));
}
pub extern fn lean_uint32_of_big_nat(a: b_lean_obj_arg) u32;
pub fn lean_uint32_of_nat(arg_a: b_lean_obj_arg) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    return if (@as(c_int, @intFromBool(lean_is_scalar(a))) != 0) @as(u32, @bitCast(@as(c_uint, @truncate(lean_unbox(a))))) else lean_uint32_of_big_nat(a);
}
pub fn lean_uint32_of_nat_mk(arg_a: lean_obj_arg) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    var r: u32 = lean_uint32_of_nat(a);
    _ = &r;
    lean_dec(a);
    return r;
}
pub fn lean_uint32_to_nat(arg_a: u32) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    return lean_usize_to_nat(@as(usize, @bitCast(@as(c_ulong, a))));
}
pub fn lean_uint32_add(arg_a1: u32, arg_a2: u32) callconv(.c) u32 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return a1 +% a2;
}
pub fn lean_uint32_sub(arg_a1: u32, arg_a2: u32) callconv(.c) u32 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return a1 -% a2;
}
pub fn lean_uint32_mul(arg_a1: u32, arg_a2: u32) callconv(.c) u32 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return a1 *% a2;
}
pub fn lean_uint32_div(arg_a1: u32, arg_a2: u32) callconv(.c) u32 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return if (a2 == @as(u32, @bitCast(@as(c_int, 0)))) @as(u32, @bitCast(@as(c_int, 0))) else a1 / a2;
}
pub fn lean_uint32_mod(arg_a1: u32, arg_a2: u32) callconv(.c) u32 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return if (a2 == @as(u32, @bitCast(@as(c_int, 0)))) a1 else a1 % a2;
}
pub fn lean_uint32_land(arg_a: u32, arg_b: u32) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a & b;
}
pub fn lean_uint32_lor(arg_a: u32, arg_b: u32) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a | b;
}
pub fn lean_uint32_xor(arg_a: u32, arg_b: u32) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a ^ b;
}
pub fn lean_uint32_shift_left(arg_a: u32, arg_b: u32) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a << @intCast(b % @as(u32, @bitCast(@as(c_int, 32))));
}
pub fn lean_uint32_shift_right(arg_a: u32, arg_b: u32) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a >> @intCast(b % @as(u32, @bitCast(@as(c_int, 32))));
}
pub fn lean_uint32_complement(arg_a: u32) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    return ~a;
}
pub fn lean_uint32_neg(arg_a: u32) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    return -%a;
}
pub fn lean_uint32_log2(arg_a: u32) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    var res: u32 = 0;
    _ = &res;
    while (a >= @as(u32, @bitCast(@as(c_int, 2)))) {
        res +%= 1;
        a /= @as(u32, @bitCast(@as(c_int, 2)));
    }
    return res;
}
pub fn lean_uint32_dec_eq(arg_a1: u32, arg_a2: u32) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(a1 == a2));
}
pub fn lean_uint32_dec_lt(arg_a1: u32, arg_a2: u32) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(a1 < a2));
}
pub fn lean_uint32_dec_le(arg_a1: u32, arg_a2: u32) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(a1 <= a2));
}
pub fn lean_uint32_to_uint8(arg_a: u32) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    return @as(u8, @bitCast(@as(u8, @truncate(a))));
}
pub fn lean_uint32_to_uint16(arg_a: u32) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    return @as(u16, @bitCast(@as(c_ushort, @truncate(a))));
}
pub fn lean_uint32_to_uint64(arg_a: u32) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    return @as(u64, @bitCast(@as(c_ulong, a)));
}
pub fn lean_uint32_to_usize(arg_a: u32) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    return @as(usize, @bitCast(@as(c_ulong, a)));
}
pub extern fn lean_uint64_of_big_nat(a: b_lean_obj_arg) u64;
pub fn lean_uint64_of_nat(arg_a: b_lean_obj_arg) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    return if (@as(c_int, @intFromBool(lean_is_scalar(a))) != 0) @as(u64, @bitCast(lean_unbox(a))) else lean_uint64_of_big_nat(a);
}
pub fn lean_uint64_of_nat_mk(arg_a: lean_obj_arg) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    var r: u64 = lean_uint64_of_nat(a);
    _ = &r;
    lean_dec(a);
    return r;
}
pub fn lean_uint64_add(arg_a1: u64, arg_a2: u64) callconv(.c) u64 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return a1 +% a2;
}
pub fn lean_uint64_sub(arg_a1: u64, arg_a2: u64) callconv(.c) u64 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return a1 -% a2;
}
pub fn lean_uint64_mul(arg_a1: u64, arg_a2: u64) callconv(.c) u64 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return a1 *% a2;
}
pub fn lean_uint64_div(arg_a1: u64, arg_a2: u64) callconv(.c) u64 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return if (a2 == @as(u64, @bitCast(@as(c_long, @as(c_int, 0))))) @as(u64, @bitCast(@as(c_long, @as(c_int, 0)))) else a1 / a2;
}
pub fn lean_uint64_mod(arg_a1: u64, arg_a2: u64) callconv(.c) u64 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return if (a2 == @as(u64, @bitCast(@as(c_long, @as(c_int, 0))))) a1 else a1 % a2;
}
pub fn lean_uint64_land(arg_a: u64, arg_b: u64) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a & b;
}
pub fn lean_uint64_lor(arg_a: u64, arg_b: u64) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a | b;
}
pub fn lean_uint64_xor(arg_a: u64, arg_b: u64) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a ^ b;
}
pub fn lean_uint64_shift_left(arg_a: u64, arg_b: u64) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a << @intCast(b % @as(u64, @bitCast(@as(c_long, @as(c_int, 64)))));
}
pub fn lean_uint64_shift_right(arg_a: u64, arg_b: u64) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a >> @intCast(b % @as(u64, @bitCast(@as(c_long, @as(c_int, 64)))));
}
pub fn lean_uint64_complement(arg_a: u64) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    return ~a;
}
pub fn lean_uint64_neg(arg_a: u64) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    return -%a;
}
pub fn lean_uint64_log2(arg_a: u64) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    var res: u64 = 0;
    _ = &res;
    while (a >= @as(u64, @bitCast(@as(c_long, @as(c_int, 2))))) {
        res +%= 1;
        a /= @as(u64, @bitCast(@as(c_long, @as(c_int, 2))));
    }
    return res;
}
pub fn lean_uint64_dec_eq(arg_a1: u64, arg_a2: u64) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(a1 == a2));
}
pub fn lean_uint64_dec_lt(arg_a1: u64, arg_a2: u64) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(a1 < a2));
}
pub fn lean_uint64_dec_le(arg_a1: u64, arg_a2: u64) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(a1 <= a2));
}
pub extern fn lean_uint64_mix_hash(a1: u64, a2: u64) u64;
pub fn lean_uint64_to_uint8(arg_a: u64) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    return @as(u8, @bitCast(@as(u8, @truncate(a))));
}
pub fn lean_uint64_to_uint16(arg_a: u64) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    return @as(u16, @bitCast(@as(c_ushort, @truncate(a))));
}
pub fn lean_uint64_to_uint32(arg_a: u64) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    return @as(u32, @bitCast(@as(c_uint, @truncate(a))));
}
pub fn lean_uint64_to_usize(arg_a: u64) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    return @as(usize, @bitCast(a));
}
pub extern fn lean_usize_of_big_nat(a: b_lean_obj_arg) usize;
pub fn lean_usize_of_nat(arg_a: b_lean_obj_arg) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    return if (@as(c_int, @intFromBool(lean_is_scalar(a))) != 0) lean_unbox(a) else lean_usize_of_big_nat(a);
}
pub fn lean_usize_of_nat_mk(arg_a: lean_obj_arg) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    var r: usize = lean_usize_of_nat(a);
    _ = &r;
    lean_dec(a);
    return r;
}
pub fn lean_usize_add(arg_a1: usize, arg_a2: usize) callconv(.c) usize {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return a1 +% a2;
}
pub fn lean_usize_sub(arg_a1: usize, arg_a2: usize) callconv(.c) usize {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return a1 -% a2;
}
pub fn lean_usize_mul(arg_a1: usize, arg_a2: usize) callconv(.c) usize {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return a1 *% a2;
}
pub fn lean_usize_div(arg_a1: usize, arg_a2: usize) callconv(.c) usize {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return if (a2 == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))) else a1 / a2;
}
pub fn lean_usize_mod(arg_a1: usize, arg_a2: usize) callconv(.c) usize {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return if (a2 == @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) a1 else a1 % a2;
}
pub fn lean_usize_land(arg_a: usize, arg_b: usize) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a & b;
}
pub fn lean_usize_lor(arg_a: usize, arg_b: usize) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a | b;
}
pub fn lean_usize_xor(arg_a: usize, arg_b: usize) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a ^ b;
}
pub fn lean_usize_shift_left(arg_a: usize, arg_b: usize) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a << @intCast(b % (@sizeOf(usize) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))));
}
pub fn lean_usize_shift_right(arg_a: usize, arg_b: usize) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a >> @intCast(b % (@sizeOf(usize) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))));
}
pub fn lean_usize_complement(arg_a: usize) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    return ~a;
}
pub fn lean_usize_neg(arg_a: usize) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    return -%a;
}
pub fn lean_usize_log2(arg_a: usize) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    var res: usize = 0;
    _ = &res;
    while (a >= @as(usize, @bitCast(@as(c_long, @as(c_int, 2))))) {
        res +%= 1;
        a /= @as(usize, @bitCast(@as(c_long, @as(c_int, 2))));
    }
    return res;
}
pub fn lean_usize_dec_eq(arg_a1: usize, arg_a2: usize) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(a1 == a2));
}
pub fn lean_usize_dec_lt(arg_a1: usize, arg_a2: usize) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(a1 < a2));
}
pub fn lean_usize_dec_le(arg_a1: usize, arg_a2: usize) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    return @as(u8, @intFromBool(a1 <= a2));
}
pub fn lean_usize_to_uint8(arg_a: usize) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    return @as(u8, @bitCast(@as(u8, @truncate(a))));
}
pub fn lean_usize_to_uint16(arg_a: usize) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    return @as(u16, @bitCast(@as(c_ushort, @truncate(a))));
}
pub fn lean_usize_to_uint32(arg_a: usize) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    return @as(u32, @bitCast(@as(c_uint, @truncate(a))));
}
pub fn lean_usize_to_uint64(arg_a: usize) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    return @as(u64, @bitCast(a));
}
pub extern fn lean_int8_of_big_int(a: b_lean_obj_arg) i8;
pub fn lean_int8_of_int(arg_a: b_lean_obj_arg) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var res: i8 = undefined;
    _ = &res;
    if (lean_is_scalar(a)) {
        res = @as(i8, @bitCast(@as(i8, @truncate(lean_scalar_to_int64(a)))));
    } else {
        res = lean_int8_of_big_int(a);
    }
    return @as(u8, @bitCast(res));
}
pub fn lean_int8_of_nat(arg_a: b_lean_obj_arg) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var res: i8 = undefined;
    _ = &res;
    if (lean_is_scalar(a)) {
        res = @as(i8, @bitCast(@as(u8, @truncate(lean_unbox(a)))));
    } else {
        res = lean_int8_of_big_int(a);
    }
    return @as(u8, @bitCast(res));
}
pub fn lean_int8_to_int(arg_a: u8) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    var arg: i8 = @as(i8, @bitCast(a));
    _ = &arg;
    return lean_int64_to_int(@as(i64, @bitCast(@as(c_long, arg))));
}
pub fn lean_int8_neg(arg_a: u8) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var arg: i8 = @as(i8, @bitCast(a));
    _ = &arg;
    return @as(u8, @bitCast(@as(i8, @truncate(-@as(c_int, @bitCast(@as(c_int, arg)))))));
}
pub fn lean_int8_add(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i8 = @as(i8, @bitCast(a1));
    _ = &lhs;
    var rhs: i8 = @as(i8, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_int, lhs))) + @as(c_int, @bitCast(@as(c_int, rhs)))))));
}
pub fn lean_int8_sub(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i8 = @as(i8, @bitCast(a1));
    _ = &lhs;
    var rhs: i8 = @as(i8, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_int, lhs))) - @as(c_int, @bitCast(@as(c_int, rhs)))))));
}
pub fn lean_int8_mul(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i8 = @as(i8, @bitCast(a1));
    _ = &lhs;
    var rhs: i8 = @as(i8, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_int, lhs))) * @as(c_int, @bitCast(@as(c_int, rhs)))))));
}
pub fn lean_int8_div(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i8 = @as(i8, @bitCast(a1));
    _ = &lhs;
    var rhs: i8 = @as(i8, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @bitCast(@as(i8, @truncate(if (@as(c_int, @bitCast(@as(c_int, rhs))) == @as(c_int, 0)) @as(c_int, 0) else @divTrunc(@as(c_int, @bitCast(@as(c_int, lhs))), @as(c_int, @bitCast(@as(c_int, rhs))))))));
}
pub fn lean_int8_mod(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i8 = @as(i8, @bitCast(a1));
    _ = &lhs;
    var rhs: i8 = @as(i8, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @bitCast(@as(i8, @truncate(if (@as(c_int, @bitCast(@as(c_int, rhs))) == @as(c_int, 0)) @as(c_int, @bitCast(@as(c_int, lhs))) else @import("std").zig.c_translation.signedRemainder(@as(c_int, @bitCast(@as(c_int, lhs))), @as(c_int, @bitCast(@as(c_int, rhs))))))));
}
pub fn lean_int8_land(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i8 = @as(i8, @bitCast(a1));
    _ = &lhs;
    var rhs: i8 = @as(i8, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_int, lhs))) & @as(c_int, @bitCast(@as(c_int, rhs)))))));
}
pub fn lean_int8_lor(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i8 = @as(i8, @bitCast(a1));
    _ = &lhs;
    var rhs: i8 = @as(i8, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_int, lhs))) | @as(c_int, @bitCast(@as(c_int, rhs)))))));
}
pub fn lean_int8_xor(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i8 = @as(i8, @bitCast(a1));
    _ = &lhs;
    var rhs: i8 = @as(i8, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_int, lhs))) ^ @as(c_int, @bitCast(@as(c_int, rhs)))))));
}
pub fn lean_int8_shift_right(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i8 = @as(i8, @bitCast(a1));
    _ = &lhs;
    var rhs: i8 = @as(i8, @bitCast(@as(i8, @truncate(@import("std").zig.c_translation.signedRemainder(@import("std").zig.c_translation.signedRemainder(@as(c_int, @bitCast(@as(c_int, @as(i8, @bitCast(a2))))), @as(c_int, 8)) + @as(c_int, 8), @as(c_int, 8))))));
    _ = &rhs;
    return @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_int, lhs))) >> @intCast(@as(c_int, @bitCast(@as(c_int, rhs))))))));
}
pub fn lean_int8_shift_left(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i8 = @as(i8, @bitCast(a1));
    _ = &lhs;
    var rhs: i8 = @as(i8, @bitCast(@as(i8, @truncate(@import("std").zig.c_translation.signedRemainder(@import("std").zig.c_translation.signedRemainder(@as(c_int, @bitCast(@as(c_int, @as(i8, @bitCast(a2))))), @as(c_int, 8)) + @as(c_int, 8), @as(c_int, 8))))));
    _ = &rhs;
    return @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_int, lhs))) << @intCast(@as(c_int, @bitCast(@as(c_int, rhs))))))));
}
pub fn lean_int8_complement(arg_a: u8) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var arg: i8 = @as(i8, @bitCast(a));
    _ = &arg;
    return @as(u8, @bitCast(@as(i8, @truncate(~@as(c_int, @bitCast(@as(c_int, arg)))))));
}
pub fn lean_int8_abs(arg_a: u8) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var arg: i8 = @as(i8, @bitCast(a));
    _ = &arg;
    return @as(u8, @bitCast(@as(i8, @truncate(if (@as(c_int, @bitCast(@as(c_int, arg))) < @as(c_int, 0)) -@as(c_int, @bitCast(@as(c_int, arg))) else @as(c_int, @bitCast(@as(c_int, arg)))))));
}
pub fn lean_int8_dec_eq(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i8 = @as(i8, @bitCast(a1));
    _ = &lhs;
    var rhs: i8 = @as(i8, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @intFromBool(@as(c_int, @bitCast(@as(c_int, lhs))) == @as(c_int, @bitCast(@as(c_int, rhs)))));
}
pub fn lean_int8_dec_lt(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i8 = @as(i8, @bitCast(a1));
    _ = &lhs;
    var rhs: i8 = @as(i8, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @intFromBool(@as(c_int, @bitCast(@as(c_int, lhs))) < @as(c_int, @bitCast(@as(c_int, rhs)))));
}
pub fn lean_int8_dec_le(arg_a1: u8, arg_a2: u8) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i8 = @as(i8, @bitCast(a1));
    _ = &lhs;
    var rhs: i8 = @as(i8, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @intFromBool(@as(c_int, @bitCast(@as(c_int, lhs))) <= @as(c_int, @bitCast(@as(c_int, rhs)))));
}
pub fn lean_int8_to_int16(arg_a: u8) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    return @as(u16, @bitCast(@as(i16, @bitCast(@as(c_short, @as(i8, @bitCast(a)))))));
}
pub fn lean_int8_to_int32(arg_a: u8) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    return @as(u32, @bitCast(@as(i32, @bitCast(@as(c_int, @as(i8, @bitCast(a)))))));
}
pub fn lean_int8_to_int64(arg_a: u8) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    return @as(u64, @bitCast(@as(i64, @bitCast(@as(c_long, @as(i8, @bitCast(a)))))));
}
pub fn lean_int8_to_isize(arg_a: u8) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    return @as(usize, @bitCast(@as(ptrdiff_t, @bitCast(@as(c_long, @as(i8, @bitCast(a)))))));
}
pub extern fn lean_int16_of_big_int(a: b_lean_obj_arg) i16;
pub fn lean_int16_of_int(arg_a: b_lean_obj_arg) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    var res: i16 = undefined;
    _ = &res;
    if (lean_is_scalar(a)) {
        res = @as(i16, @bitCast(@as(c_short, @truncate(lean_scalar_to_int64(a)))));
    } else {
        res = lean_int16_of_big_int(a);
    }
    return @as(u16, @bitCast(res));
}
pub fn lean_int16_of_nat(arg_a: b_lean_obj_arg) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    var res: i16 = undefined;
    _ = &res;
    if (lean_is_scalar(a)) {
        res = @as(i16, @bitCast(@as(c_ushort, @truncate(lean_unbox(a)))));
    } else {
        res = lean_int16_of_big_int(a);
    }
    return @as(u16, @bitCast(res));
}
pub fn lean_int16_to_int(arg_a: u16) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    var arg: i16 = @as(i16, @bitCast(a));
    _ = &arg;
    return lean_int64_to_int(@as(i64, @bitCast(@as(c_long, arg))));
}
pub fn lean_int16_neg(arg_a: u16) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    var arg: i16 = @as(i16, @bitCast(a));
    _ = &arg;
    return @as(u16, @bitCast(@as(c_short, @truncate(-@as(c_int, @bitCast(@as(c_int, arg)))))));
}
pub fn lean_int16_add(arg_a1: u16, arg_a2: u16) callconv(.c) u16 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i16 = @as(i16, @bitCast(a1));
    _ = &lhs;
    var rhs: i16 = @as(i16, @bitCast(a2));
    _ = &rhs;
    return @as(u16, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_int, lhs))) + @as(c_int, @bitCast(@as(c_int, rhs)))))));
}
pub fn lean_int16_sub(arg_a1: u16, arg_a2: u16) callconv(.c) u16 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i16 = @as(i16, @bitCast(a1));
    _ = &lhs;
    var rhs: i16 = @as(i16, @bitCast(a2));
    _ = &rhs;
    return @as(u16, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_int, lhs))) - @as(c_int, @bitCast(@as(c_int, rhs)))))));
}
pub fn lean_int16_mul(arg_a1: u16, arg_a2: u16) callconv(.c) u16 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i16 = @as(i16, @bitCast(a1));
    _ = &lhs;
    var rhs: i16 = @as(i16, @bitCast(a2));
    _ = &rhs;
    return @as(u16, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_int, lhs))) * @as(c_int, @bitCast(@as(c_int, rhs)))))));
}
pub fn lean_int16_div(arg_a1: u16, arg_a2: u16) callconv(.c) u16 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i16 = @as(i16, @bitCast(a1));
    _ = &lhs;
    var rhs: i16 = @as(i16, @bitCast(a2));
    _ = &rhs;
    return @as(u16, @bitCast(@as(c_short, @truncate(if (@as(c_int, @bitCast(@as(c_int, rhs))) == @as(c_int, 0)) @as(c_int, 0) else @divTrunc(@as(c_int, @bitCast(@as(c_int, lhs))), @as(c_int, @bitCast(@as(c_int, rhs))))))));
}
pub fn lean_int16_mod(arg_a1: u16, arg_a2: u16) callconv(.c) u16 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i16 = @as(i16, @bitCast(a1));
    _ = &lhs;
    var rhs: i16 = @as(i16, @bitCast(a2));
    _ = &rhs;
    return @as(u16, @bitCast(@as(c_short, @truncate(if (@as(c_int, @bitCast(@as(c_int, rhs))) == @as(c_int, 0)) @as(c_int, @bitCast(@as(c_int, lhs))) else @import("std").zig.c_translation.signedRemainder(@as(c_int, @bitCast(@as(c_int, lhs))), @as(c_int, @bitCast(@as(c_int, rhs))))))));
}
pub fn lean_int16_land(arg_a1: u16, arg_a2: u16) callconv(.c) u16 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i16 = @as(i16, @bitCast(a1));
    _ = &lhs;
    var rhs: i16 = @as(i16, @bitCast(a2));
    _ = &rhs;
    return @as(u16, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_int, lhs))) & @as(c_int, @bitCast(@as(c_int, rhs)))))));
}
pub fn lean_int16_lor(arg_a1: u16, arg_a2: u16) callconv(.c) u16 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i16 = @as(i16, @bitCast(a1));
    _ = &lhs;
    var rhs: i16 = @as(i16, @bitCast(a2));
    _ = &rhs;
    return @as(u16, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_int, lhs))) | @as(c_int, @bitCast(@as(c_int, rhs)))))));
}
pub fn lean_int16_xor(arg_a1: u16, arg_a2: u16) callconv(.c) u16 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i16 = @as(i16, @bitCast(a1));
    _ = &lhs;
    var rhs: i16 = @as(i16, @bitCast(a2));
    _ = &rhs;
    return @as(u16, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_int, lhs))) ^ @as(c_int, @bitCast(@as(c_int, rhs)))))));
}
pub fn lean_int16_shift_right(arg_a1: u16, arg_a2: u16) callconv(.c) u16 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i16 = @as(i16, @bitCast(a1));
    _ = &lhs;
    var rhs: i16 = @as(i16, @bitCast(@as(c_short, @truncate(@import("std").zig.c_translation.signedRemainder(@import("std").zig.c_translation.signedRemainder(@as(c_int, @bitCast(@as(c_int, @as(i16, @bitCast(a2))))), @as(c_int, 16)) + @as(c_int, 16), @as(c_int, 16))))));
    _ = &rhs;
    return @as(u16, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_int, lhs))) >> @intCast(@as(c_int, @bitCast(@as(c_int, rhs))))))));
}
pub fn lean_int16_shift_left(arg_a1: u16, arg_a2: u16) callconv(.c) u16 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i16 = @as(i16, @bitCast(a1));
    _ = &lhs;
    var rhs: i16 = @as(i16, @bitCast(@as(c_short, @truncate(@import("std").zig.c_translation.signedRemainder(@import("std").zig.c_translation.signedRemainder(@as(c_int, @bitCast(@as(c_int, @as(i16, @bitCast(a2))))), @as(c_int, 16)) + @as(c_int, 16), @as(c_int, 16))))));
    _ = &rhs;
    return @as(u16, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_int, lhs))) << @intCast(@as(c_int, @bitCast(@as(c_int, rhs))))))));
}
pub fn lean_int16_complement(arg_a: u16) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    var arg: i16 = @as(i16, @bitCast(a));
    _ = &arg;
    return @as(u16, @bitCast(@as(c_short, @truncate(~@as(c_int, @bitCast(@as(c_int, arg)))))));
}
pub fn lean_int16_abs(arg_a: u16) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    var arg: i16 = @as(i16, @bitCast(a));
    _ = &arg;
    return @as(u16, @bitCast(@as(c_short, @truncate(if (@as(c_int, @bitCast(@as(c_int, arg))) < @as(c_int, 0)) -@as(c_int, @bitCast(@as(c_int, arg))) else @as(c_int, @bitCast(@as(c_int, arg)))))));
}
pub fn lean_int16_dec_eq(arg_a1: u16, arg_a2: u16) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i16 = @as(i16, @bitCast(a1));
    _ = &lhs;
    var rhs: i16 = @as(i16, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @intFromBool(@as(c_int, @bitCast(@as(c_int, lhs))) == @as(c_int, @bitCast(@as(c_int, rhs)))));
}
pub fn lean_int16_dec_lt(arg_a1: u16, arg_a2: u16) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i16 = @as(i16, @bitCast(a1));
    _ = &lhs;
    var rhs: i16 = @as(i16, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @intFromBool(@as(c_int, @bitCast(@as(c_int, lhs))) < @as(c_int, @bitCast(@as(c_int, rhs)))));
}
pub fn lean_int16_dec_le(arg_a1: u16, arg_a2: u16) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i16 = @as(i16, @bitCast(a1));
    _ = &lhs;
    var rhs: i16 = @as(i16, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @intFromBool(@as(c_int, @bitCast(@as(c_int, lhs))) <= @as(c_int, @bitCast(@as(c_int, rhs)))));
}
pub fn lean_int16_to_int8(arg_a: u16) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    return @as(u8, @bitCast(@as(i8, @bitCast(@as(i8, @truncate(@as(i16, @bitCast(a))))))));
}
pub fn lean_int16_to_int32(arg_a: u16) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    return @as(u32, @bitCast(@as(i32, @bitCast(@as(c_int, @as(i16, @bitCast(a)))))));
}
pub fn lean_int16_to_int64(arg_a: u16) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    return @as(u64, @bitCast(@as(i64, @bitCast(@as(c_long, @as(i16, @bitCast(a)))))));
}
pub fn lean_int16_to_isize(arg_a: u16) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    return @as(usize, @bitCast(@as(ptrdiff_t, @bitCast(@as(c_long, @as(i16, @bitCast(a)))))));
}
pub extern fn lean_int32_of_big_int(a: b_lean_obj_arg) i32;
pub fn lean_int32_of_int(arg_a: b_lean_obj_arg) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    var res: i32 = undefined;
    _ = &res;
    if (lean_is_scalar(a)) {
        res = @as(i32, @bitCast(@as(c_int, @truncate(lean_scalar_to_int64(a)))));
    } else {
        res = lean_int32_of_big_int(a);
    }
    return @as(u32, @bitCast(res));
}
pub fn lean_int32_of_nat(arg_a: b_lean_obj_arg) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    var res: i32 = undefined;
    _ = &res;
    if (lean_is_scalar(a)) {
        res = @as(i32, @bitCast(@as(c_uint, @truncate(lean_unbox(a)))));
    } else {
        res = lean_int32_of_big_int(a);
    }
    return @as(u32, @bitCast(res));
}
pub fn lean_int32_to_int(arg_a: u32) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    var arg: i32 = @as(i32, @bitCast(a));
    _ = &arg;
    return lean_int64_to_int(@as(i64, @bitCast(@as(c_long, arg))));
}
pub fn lean_int32_neg(arg_a: u32) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    var arg: i32 = @as(i32, @bitCast(a));
    _ = &arg;
    return @as(u32, @bitCast(-arg));
}
pub fn lean_int32_add(arg_a1: u32, arg_a2: u32) callconv(.c) u32 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i32 = @as(i32, @bitCast(a1));
    _ = &lhs;
    var rhs: i32 = @as(i32, @bitCast(a2));
    _ = &rhs;
    return @as(u32, @bitCast(lhs + rhs));
}
pub fn lean_int32_sub(arg_a1: u32, arg_a2: u32) callconv(.c) u32 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i32 = @as(i32, @bitCast(a1));
    _ = &lhs;
    var rhs: i32 = @as(i32, @bitCast(a2));
    _ = &rhs;
    return @as(u32, @bitCast(lhs - rhs));
}
pub fn lean_int32_mul(arg_a1: u32, arg_a2: u32) callconv(.c) u32 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i32 = @as(i32, @bitCast(a1));
    _ = &lhs;
    var rhs: i32 = @as(i32, @bitCast(a2));
    _ = &rhs;
    return @as(u32, @bitCast(lhs * rhs));
}
pub fn lean_int32_div(arg_a1: u32, arg_a2: u32) callconv(.c) u32 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i32 = @as(i32, @bitCast(a1));
    _ = &lhs;
    var rhs: i32 = @as(i32, @bitCast(a2));
    _ = &rhs;
    return @as(u32, @bitCast(if (rhs == @as(c_int, 0)) @as(c_int, 0) else @divTrunc(lhs, rhs)));
}
pub fn lean_int32_mod(arg_a1: u32, arg_a2: u32) callconv(.c) u32 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i32 = @as(i32, @bitCast(a1));
    _ = &lhs;
    var rhs: i32 = @as(i32, @bitCast(a2));
    _ = &rhs;
    return @as(u32, @bitCast(if (rhs == @as(c_int, 0)) lhs else @import("std").zig.c_translation.signedRemainder(lhs, rhs)));
}
pub fn lean_int32_land(arg_a1: u32, arg_a2: u32) callconv(.c) u32 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i32 = @as(i32, @bitCast(a1));
    _ = &lhs;
    var rhs: i32 = @as(i32, @bitCast(a2));
    _ = &rhs;
    return @as(u32, @bitCast(lhs & rhs));
}
pub fn lean_int32_lor(arg_a1: u32, arg_a2: u32) callconv(.c) u32 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i32 = @as(i32, @bitCast(a1));
    _ = &lhs;
    var rhs: i32 = @as(i32, @bitCast(a2));
    _ = &rhs;
    return @as(u32, @bitCast(lhs | rhs));
}
pub fn lean_int32_xor(arg_a1: u32, arg_a2: u32) callconv(.c) u32 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i32 = @as(i32, @bitCast(a1));
    _ = &lhs;
    var rhs: i32 = @as(i32, @bitCast(a2));
    _ = &rhs;
    return @as(u32, @bitCast(lhs ^ rhs));
}
pub fn lean_int32_shift_right(arg_a1: u32, arg_a2: u32) callconv(.c) u32 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i32 = @as(i32, @bitCast(a1));
    _ = &lhs;
    var rhs: i32 = @import("std").zig.c_translation.signedRemainder(@import("std").zig.c_translation.signedRemainder(@as(i32, @bitCast(a2)), @as(c_int, 32)) + @as(c_int, 32), @as(c_int, 32));
    _ = &rhs;
    return @as(u32, @bitCast(lhs >> @intCast(rhs)));
}
pub fn lean_int32_shift_left(arg_a1: u32, arg_a2: u32) callconv(.c) u32 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i32 = @as(i32, @bitCast(a1));
    _ = &lhs;
    var rhs: i32 = @import("std").zig.c_translation.signedRemainder(@import("std").zig.c_translation.signedRemainder(@as(i32, @bitCast(a2)), @as(c_int, 32)) + @as(c_int, 32), @as(c_int, 32));
    _ = &rhs;
    return @as(u32, @bitCast(lhs << @intCast(rhs)));
}
pub fn lean_int32_complement(arg_a: u32) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    var arg: i32 = @as(i32, @bitCast(a));
    _ = &arg;
    return @as(u32, @bitCast(~arg));
}
pub fn lean_int32_abs(arg_a: u32) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    var arg: i32 = @as(i32, @bitCast(a));
    _ = &arg;
    return @as(u32, @bitCast(if (arg < @as(c_int, 0)) -arg else arg));
}
pub fn lean_int32_dec_eq(arg_a1: u32, arg_a2: u32) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i32 = @as(i32, @bitCast(a1));
    _ = &lhs;
    var rhs: i32 = @as(i32, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @intFromBool(lhs == rhs));
}
pub fn lean_int32_dec_lt(arg_a1: u32, arg_a2: u32) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i32 = @as(i32, @bitCast(a1));
    _ = &lhs;
    var rhs: i32 = @as(i32, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @intFromBool(lhs < rhs));
}
pub fn lean_int32_dec_le(arg_a1: u32, arg_a2: u32) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i32 = @as(i32, @bitCast(a1));
    _ = &lhs;
    var rhs: i32 = @as(i32, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @intFromBool(lhs <= rhs));
}
pub fn lean_int32_to_int8(arg_a: u32) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    return @as(u8, @bitCast(@as(i8, @bitCast(@as(i8, @truncate(@as(i32, @bitCast(a))))))));
}
pub fn lean_int32_to_int16(arg_a: u32) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    return @as(u16, @bitCast(@as(i16, @bitCast(@as(c_short, @truncate(@as(i32, @bitCast(a))))))));
}
pub fn lean_int32_to_int64(arg_a: u32) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    return @as(u64, @bitCast(@as(i64, @bitCast(@as(c_long, @as(i32, @bitCast(a)))))));
}
pub fn lean_int32_to_isize(arg_a: u32) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    return @as(usize, @bitCast(@as(ptrdiff_t, @bitCast(@as(c_long, @as(i32, @bitCast(a)))))));
}
pub extern fn lean_int64_of_big_int(a: b_lean_obj_arg) i64;
pub fn lean_int64_of_int(arg_a: b_lean_obj_arg) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    var res: i64 = undefined;
    _ = &res;
    if (lean_is_scalar(a)) {
        res = lean_scalar_to_int64(a);
    } else {
        res = lean_int64_of_big_int(a);
    }
    return @as(u64, @bitCast(res));
}
pub fn lean_int64_of_nat(arg_a: b_lean_obj_arg) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    var res: i64 = undefined;
    _ = &res;
    if (lean_is_scalar(a)) {
        res = @as(i64, @bitCast(lean_unbox(a)));
    } else {
        res = lean_int64_of_big_int(a);
    }
    return @as(u64, @bitCast(res));
}
pub fn lean_int64_to_int_sint(arg_a: u64) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    var arg: i64 = @as(i64, @bitCast(a));
    _ = &arg;
    return lean_int64_to_int(arg);
}
pub fn lean_int64_neg(arg_a: u64) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    var arg: i64 = @as(i64, @bitCast(a));
    _ = &arg;
    return @as(u64, @bitCast(-arg));
}
pub fn lean_int64_add(arg_a1: u64, arg_a2: u64) callconv(.c) u64 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i64 = @as(i64, @bitCast(a1));
    _ = &lhs;
    var rhs: i64 = @as(i64, @bitCast(a2));
    _ = &rhs;
    return @as(u64, @bitCast(lhs + rhs));
}
pub fn lean_int64_sub(arg_a1: u64, arg_a2: u64) callconv(.c) u64 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i64 = @as(i64, @bitCast(a1));
    _ = &lhs;
    var rhs: i64 = @as(i64, @bitCast(a2));
    _ = &rhs;
    return @as(u64, @bitCast(lhs - rhs));
}
pub fn lean_int64_mul(arg_a1: u64, arg_a2: u64) callconv(.c) u64 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i64 = @as(i64, @bitCast(a1));
    _ = &lhs;
    var rhs: i64 = @as(i64, @bitCast(a2));
    _ = &rhs;
    return @as(u64, @bitCast(lhs * rhs));
}
pub fn lean_int64_div(arg_a1: u64, arg_a2: u64) callconv(.c) u64 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i64 = @as(i64, @bitCast(a1));
    _ = &lhs;
    var rhs: i64 = @as(i64, @bitCast(a2));
    _ = &rhs;
    return @as(u64, @bitCast(if (rhs == @as(i64, @bitCast(@as(c_long, @as(c_int, 0))))) @as(i64, @bitCast(@as(c_long, @as(c_int, 0)))) else @divTrunc(lhs, rhs)));
}
pub fn lean_int64_mod(arg_a1: u64, arg_a2: u64) callconv(.c) u64 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i64 = @as(i64, @bitCast(a1));
    _ = &lhs;
    var rhs: i64 = @as(i64, @bitCast(a2));
    _ = &rhs;
    return @as(u64, @bitCast(if (rhs == @as(i64, @bitCast(@as(c_long, @as(c_int, 0))))) lhs else @import("std").zig.c_translation.signedRemainder(lhs, rhs)));
}
pub fn lean_int64_land(arg_a1: u64, arg_a2: u64) callconv(.c) u64 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i64 = @as(i64, @bitCast(a1));
    _ = &lhs;
    var rhs: i64 = @as(i64, @bitCast(a2));
    _ = &rhs;
    return @as(u64, @bitCast(lhs & rhs));
}
pub fn lean_int64_lor(arg_a1: u64, arg_a2: u64) callconv(.c) u64 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i64 = @as(i64, @bitCast(a1));
    _ = &lhs;
    var rhs: i64 = @as(i64, @bitCast(a2));
    _ = &rhs;
    return @as(u64, @bitCast(lhs | rhs));
}
pub fn lean_int64_xor(arg_a1: u64, arg_a2: u64) callconv(.c) u64 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i64 = @as(i64, @bitCast(a1));
    _ = &lhs;
    var rhs: i64 = @as(i64, @bitCast(a2));
    _ = &rhs;
    return @as(u64, @bitCast(lhs ^ rhs));
}
pub fn lean_int64_shift_right(arg_a1: u64, arg_a2: u64) callconv(.c) u64 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i64 = @as(i64, @bitCast(a1));
    _ = &lhs;
    var rhs: i64 = @import("std").zig.c_translation.signedRemainder(@import("std").zig.c_translation.signedRemainder(@as(i64, @bitCast(a2)), @as(i64, @bitCast(@as(c_long, @as(c_int, 64))))) + @as(i64, @bitCast(@as(c_long, @as(c_int, 64)))), @as(i64, @bitCast(@as(c_long, @as(c_int, 64)))));
    _ = &rhs;
    return @as(u64, @bitCast(lhs >> @intCast(rhs)));
}
pub fn lean_int64_shift_left(arg_a1: u64, arg_a2: u64) callconv(.c) u64 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i64 = @as(i64, @bitCast(a1));
    _ = &lhs;
    var rhs: i64 = @import("std").zig.c_translation.signedRemainder(@import("std").zig.c_translation.signedRemainder(@as(i64, @bitCast(a2)), @as(i64, @bitCast(@as(c_long, @as(c_int, 64))))) + @as(i64, @bitCast(@as(c_long, @as(c_int, 64)))), @as(i64, @bitCast(@as(c_long, @as(c_int, 64)))));
    _ = &rhs;
    return @as(u64, @bitCast(lhs << @intCast(rhs)));
}
pub fn lean_int64_complement(arg_a: u64) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    var arg: i64 = @as(i64, @bitCast(a));
    _ = &arg;
    return @as(u64, @bitCast(~arg));
}
pub fn lean_int64_abs(arg_a: u64) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    var arg: i64 = @as(i64, @bitCast(a));
    _ = &arg;
    return @as(u64, @bitCast(if (arg < @as(i64, @bitCast(@as(c_long, @as(c_int, 0))))) -arg else arg));
}
pub fn lean_int64_dec_eq(arg_a1: u64, arg_a2: u64) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i64 = @as(i64, @bitCast(a1));
    _ = &lhs;
    var rhs: i64 = @as(i64, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @intFromBool(lhs == rhs));
}
pub fn lean_int64_dec_lt(arg_a1: u64, arg_a2: u64) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i64 = @as(i64, @bitCast(a1));
    _ = &lhs;
    var rhs: i64 = @as(i64, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @intFromBool(lhs < rhs));
}
pub fn lean_int64_dec_le(arg_a1: u64, arg_a2: u64) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: i64 = @as(i64, @bitCast(a1));
    _ = &lhs;
    var rhs: i64 = @as(i64, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @intFromBool(lhs <= rhs));
}
pub fn lean_int64_to_int8(arg_a: u64) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    return @as(u8, @bitCast(@as(i8, @bitCast(@as(i8, @truncate(@as(i64, @bitCast(a))))))));
}
pub fn lean_int64_to_int16(arg_a: u64) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    return @as(u16, @bitCast(@as(i16, @bitCast(@as(c_short, @truncate(@as(i64, @bitCast(a))))))));
}
pub fn lean_int64_to_int32(arg_a: u64) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    return @as(u32, @bitCast(@as(i32, @bitCast(@as(c_int, @truncate(@as(i64, @bitCast(a))))))));
}
pub fn lean_int64_to_isize(arg_a: u64) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    return @as(usize, @bitCast(@as(ptrdiff_t, @bitCast(@as(i64, @bitCast(a))))));
}
pub extern fn lean_isize_of_big_int(a: b_lean_obj_arg) ptrdiff_t;
pub fn lean_isize_of_int(arg_a: b_lean_obj_arg) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    var res: ptrdiff_t = undefined;
    _ = &res;
    if (lean_is_scalar(a)) {
        res = @as(ptrdiff_t, @bitCast(lean_scalar_to_int64(a)));
    } else {
        res = lean_isize_of_big_int(a);
    }
    return @as(usize, @bitCast(res));
}
pub fn lean_isize_of_nat(arg_a: b_lean_obj_arg) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    var res: ptrdiff_t = undefined;
    _ = &res;
    if (lean_is_scalar(a)) {
        res = @as(ptrdiff_t, @bitCast(lean_unbox(a)));
    } else {
        res = lean_isize_of_big_int(a);
    }
    return @as(usize, @bitCast(res));
}
pub fn lean_isize_to_int(arg_a: usize) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    var arg: ptrdiff_t = @as(ptrdiff_t, @bitCast(a));
    _ = &arg;
    return lean_int64_to_int(@as(i64, @bitCast(arg)));
}
pub fn lean_isize_neg(arg_a: usize) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    var arg: ptrdiff_t = @as(ptrdiff_t, @bitCast(a));
    _ = &arg;
    return @as(usize, @bitCast(-arg));
}
pub fn lean_isize_add(arg_a1: usize, arg_a2: usize) callconv(.c) usize {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a1));
    _ = &lhs;
    var rhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a2));
    _ = &rhs;
    return @as(usize, @bitCast(lhs + rhs));
}
pub fn lean_isize_sub(arg_a1: usize, arg_a2: usize) callconv(.c) usize {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a1));
    _ = &lhs;
    var rhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a2));
    _ = &rhs;
    return @as(usize, @bitCast(lhs - rhs));
}
pub fn lean_isize_mul(arg_a1: usize, arg_a2: usize) callconv(.c) usize {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a1));
    _ = &lhs;
    var rhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a2));
    _ = &rhs;
    return @as(usize, @bitCast(lhs * rhs));
}
pub fn lean_isize_div(arg_a1: usize, arg_a2: usize) callconv(.c) usize {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a1));
    _ = &lhs;
    var rhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a2));
    _ = &rhs;
    return @as(usize, @bitCast(if (rhs == @as(ptrdiff_t, @bitCast(@as(c_long, @as(c_int, 0))))) @as(ptrdiff_t, @bitCast(@as(c_long, @as(c_int, 0)))) else @divTrunc(lhs, rhs)));
}
pub fn lean_isize_mod(arg_a1: usize, arg_a2: usize) callconv(.c) usize {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a1));
    _ = &lhs;
    var rhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a2));
    _ = &rhs;
    return @as(usize, @bitCast(if (rhs == @as(ptrdiff_t, @bitCast(@as(c_long, @as(c_int, 0))))) lhs else @import("std").zig.c_translation.signedRemainder(lhs, rhs)));
}
pub fn lean_isize_land(arg_a1: usize, arg_a2: usize) callconv(.c) usize {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a1));
    _ = &lhs;
    var rhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a2));
    _ = &rhs;
    return @as(usize, @bitCast(lhs & rhs));
}
pub fn lean_isize_lor(arg_a1: usize, arg_a2: usize) callconv(.c) usize {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a1));
    _ = &lhs;
    var rhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a2));
    _ = &rhs;
    return @as(usize, @bitCast(lhs | rhs));
}
pub fn lean_isize_xor(arg_a1: usize, arg_a2: usize) callconv(.c) usize {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a1));
    _ = &lhs;
    var rhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a2));
    _ = &rhs;
    return @as(usize, @bitCast(lhs ^ rhs));
}
pub fn lean_isize_shift_right(arg_a1: usize, arg_a2: usize) callconv(.c) usize {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a1));
    _ = &lhs;
    var size: ptrdiff_t = @as(ptrdiff_t, @bitCast(@sizeOf(ptrdiff_t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))));
    _ = &size;
    var rhs: ptrdiff_t = @import("std").zig.c_translation.signedRemainder(@import("std").zig.c_translation.signedRemainder(@as(ptrdiff_t, @bitCast(a2)), size) + size, size);
    _ = &rhs;
    return @as(usize, @bitCast(lhs >> @intCast(rhs)));
}
pub fn lean_isize_shift_left(arg_a1: usize, arg_a2: usize) callconv(.c) usize {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a1));
    _ = &lhs;
    var size: ptrdiff_t = @as(ptrdiff_t, @bitCast(@sizeOf(ptrdiff_t) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))));
    _ = &size;
    var rhs: ptrdiff_t = @import("std").zig.c_translation.signedRemainder(@import("std").zig.c_translation.signedRemainder(@as(ptrdiff_t, @bitCast(a2)), size) + size, size);
    _ = &rhs;
    return @as(usize, @bitCast(lhs << @intCast(rhs)));
}
pub fn lean_isize_complement(arg_a: usize) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    var arg: ptrdiff_t = @as(ptrdiff_t, @bitCast(a));
    _ = &arg;
    return @as(usize, @bitCast(~arg));
}
pub fn lean_isize_abs(arg_a: usize) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    var arg: ptrdiff_t = @as(ptrdiff_t, @bitCast(a));
    _ = &arg;
    return @as(usize, @bitCast(if (arg < @as(ptrdiff_t, @bitCast(@as(c_long, @as(c_int, 0))))) -arg else arg));
}
pub fn lean_isize_dec_eq(arg_a1: usize, arg_a2: usize) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a1));
    _ = &lhs;
    var rhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @intFromBool(lhs == rhs));
}
pub fn lean_isize_dec_lt(arg_a1: usize, arg_a2: usize) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a1));
    _ = &lhs;
    var rhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @intFromBool(lhs < rhs));
}
pub fn lean_isize_dec_le(arg_a1: usize, arg_a2: usize) callconv(.c) u8 {
    var a1 = arg_a1;
    _ = &a1;
    var a2 = arg_a2;
    _ = &a2;
    var lhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a1));
    _ = &lhs;
    var rhs: ptrdiff_t = @as(ptrdiff_t, @bitCast(a2));
    _ = &rhs;
    return @as(u8, @intFromBool(lhs <= rhs));
}
pub fn lean_isize_to_int8(arg_a: usize) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    return @as(u8, @bitCast(@as(i8, @bitCast(@as(i8, @truncate(@as(ptrdiff_t, @bitCast(a))))))));
}
pub fn lean_isize_to_int16(arg_a: usize) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    return @as(u16, @bitCast(@as(i16, @bitCast(@as(c_short, @truncate(@as(ptrdiff_t, @bitCast(a))))))));
}
pub fn lean_isize_to_int32(arg_a: usize) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    return @as(u32, @bitCast(@as(i32, @bitCast(@as(c_int, @truncate(@as(ptrdiff_t, @bitCast(a))))))));
}
pub fn lean_isize_to_int64(arg_a: usize) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    return @as(u64, @bitCast(@as(i64, @bitCast(@as(ptrdiff_t, @bitCast(a))))));
}
pub extern fn lean_float_to_string(a: f64) lean_obj_res;
pub extern fn lean_float_scaleb(a: f64, b: b_lean_obj_arg) f64;
pub extern fn lean_float_isnan(a: f64) u8;
pub extern fn lean_float_isfinite(a: f64) u8;
pub extern fn lean_float_isinf(a: f64) u8;
pub extern fn lean_float_frexp(a: f64) lean_obj_res;
pub extern fn lean_float32_to_string(a: f32) lean_obj_res;
pub extern fn lean_float32_scaleb(a: f32, b: b_lean_obj_arg) f32;
pub extern fn lean_float32_isnan(a: f32) u8;
pub extern fn lean_float32_isfinite(a: f32) u8;
pub extern fn lean_float32_isinf(a: f32) u8;
pub extern fn lean_float32_frexp(a: f32) lean_obj_res;
pub fn lean_box_uint32(arg_v: u32) callconv(.c) lean_obj_res {
    var v = arg_v;
    _ = &v;
    if (@sizeOf(?*anyopaque) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 4))))) {
        var r: lean_obj_res = lean_alloc_ctor(@as(c_uint, @bitCast(@as(c_int, 0))), @as(c_uint, @bitCast(@as(c_int, 0))), @as(c_uint, @bitCast(@as(c_uint, @truncate(@sizeOf(u32))))));
        _ = &r;
        lean_ctor_set_uint32(r, @as(c_uint, @bitCast(@as(c_int, 0))), v);
        return r;
    } else {
        return lean_box(@as(usize, @bitCast(@as(c_ulong, v))));
    }
    return @import("std").mem.zeroes(lean_obj_res);
}
pub fn lean_unbox_uint32(arg_o: b_lean_obj_arg) callconv(.c) c_uint {
    var o = arg_o;
    _ = &o;
    if (@sizeOf(?*anyopaque) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 4))))) {
        return lean_ctor_get_uint32(o, @as(c_uint, @bitCast(@as(c_int, 0))));
    } else {
        return @as(c_uint, @bitCast(@as(c_uint, @truncate(lean_unbox(o)))));
    }
    return 0;
}
pub fn lean_box_uint64(arg_v: u64) callconv(.c) lean_obj_res {
    var v = arg_v;
    _ = &v;
    var r: lean_obj_res = lean_alloc_ctor(@as(c_uint, @bitCast(@as(c_int, 0))), @as(c_uint, @bitCast(@as(c_int, 0))), @as(c_uint, @bitCast(@as(c_uint, @truncate(@sizeOf(u64))))));
    _ = &r;
    lean_ctor_set_uint64(r, @as(c_uint, @bitCast(@as(c_int, 0))), v);
    return r;
}
pub fn lean_unbox_uint64(arg_o: b_lean_obj_arg) callconv(.c) u64 {
    var o = arg_o;
    _ = &o;
    return lean_ctor_get_uint64(o, @as(c_uint, @bitCast(@as(c_int, 0))));
}
pub fn lean_box_usize(arg_v: usize) callconv(.c) lean_obj_res {
    var v = arg_v;
    _ = &v;
    var r: lean_obj_res = lean_alloc_ctor(@as(c_uint, @bitCast(@as(c_int, 0))), @as(c_uint, @bitCast(@as(c_int, 0))), @as(c_uint, @bitCast(@as(c_uint, @truncate(@sizeOf(usize))))));
    _ = &r;
    lean_ctor_set_usize(r, @as(c_uint, @bitCast(@as(c_int, 0))), v);
    return r;
}
pub fn lean_unbox_usize(arg_o: b_lean_obj_arg) callconv(.c) usize {
    var o = arg_o;
    _ = &o;
    return lean_ctor_get_usize(o, @as(c_uint, @bitCast(@as(c_int, 0))));
}
pub fn lean_box_float(arg_v: f64) callconv(.c) lean_obj_res {
    var v = arg_v;
    _ = &v;
    var r: lean_obj_res = lean_alloc_ctor(@as(c_uint, @bitCast(@as(c_int, 0))), @as(c_uint, @bitCast(@as(c_int, 0))), @as(c_uint, @bitCast(@as(c_uint, @truncate(@sizeOf(f64))))));
    _ = &r;
    lean_ctor_set_float(r, @as(c_uint, @bitCast(@as(c_int, 0))), v);
    return r;
}
pub fn lean_unbox_float(arg_o: b_lean_obj_arg) callconv(.c) f64 {
    var o = arg_o;
    _ = &o;
    return lean_ctor_get_float(o, @as(c_uint, @bitCast(@as(c_int, 0))));
}
pub fn lean_box_float32(arg_v: f32) callconv(.c) lean_obj_res {
    var v = arg_v;
    _ = &v;
    var r: lean_obj_res = lean_alloc_ctor(@as(c_uint, @bitCast(@as(c_int, 0))), @as(c_uint, @bitCast(@as(c_int, 0))), @as(c_uint, @bitCast(@as(c_uint, @truncate(@sizeOf(f32))))));
    _ = &r;
    lean_ctor_set_float32(r, @as(c_uint, @bitCast(@as(c_int, 0))), v);
    return r;
}
pub fn lean_unbox_float32(arg_o: b_lean_obj_arg) callconv(.c) f32 {
    var o = arg_o;
    _ = &o;
    return lean_ctor_get_float32(o, @as(c_uint, @bitCast(@as(c_int, 0))));
}
pub extern fn lean_dbg_trace(s: lean_obj_arg, @"fn": lean_obj_arg) ?*lean_object;
pub extern fn lean_dbg_sleep(ms: u32, @"fn": lean_obj_arg) ?*lean_object;
pub extern fn lean_dbg_trace_if_shared(s: lean_obj_arg, a: lean_obj_arg) ?*lean_object;
pub extern fn lean_decode_io_error(errnum: c_int, fname: b_lean_obj_arg) lean_obj_res;
pub extern fn lean_decode_uv_error(errnum: c_int, fname: b_lean_obj_arg) lean_obj_res;
pub fn lean_io_mk_world() callconv(.c) lean_obj_res {
    return lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
}
pub fn lean_void_mk(arg_a: lean_obj_arg) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    lean_dec(a);
    return lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
}
pub fn lean_io_result_is_ok(arg_r: b_lean_obj_arg) callconv(.c) bool {
    var r = arg_r;
    _ = &r;
    return @as(c_int, @bitCast(@as(c_uint, lean_ptr_tag(r)))) == @as(c_int, 0);
}
pub fn lean_io_result_is_error(arg_r: b_lean_obj_arg) callconv(.c) bool {
    var r = arg_r;
    _ = &r;
    return @as(c_int, @bitCast(@as(c_uint, lean_ptr_tag(r)))) == @as(c_int, 1);
}
pub fn lean_io_result_get_value(arg_r: b_lean_obj_arg) callconv(.c) b_lean_obj_res {
    var r = arg_r;
    _ = &r;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_io_result_is_ok(r))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 2841), "lean_io_result_is_ok(r)");
        }
    }
    return lean_ctor_get(r, @as(c_uint, @bitCast(@as(c_int, 0))));
}
pub fn lean_io_result_get_error(arg_r: b_lean_obj_arg) callconv(.c) b_lean_obj_res {
    var r = arg_r;
    _ = &r;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_io_result_is_error(r))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 2842), "lean_io_result_is_error(r)");
        }
    }
    return lean_ctor_get(r, @as(c_uint, @bitCast(@as(c_int, 0))));
}
pub fn lean_io_result_take_value(arg_r: lean_obj_arg) callconv(.c) lean_obj_res {
    var r = arg_r;
    _ = &r;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!lean_io_result_is_ok(r))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 2845), "lean_io_result_is_ok(r)");
        }
    }
    var v: ?*lean_object = lean_ctor_get(r, @as(c_uint, @bitCast(@as(c_int, 0))));
    _ = &v;
    lean_inc(v);
    lean_dec(r);
    return v;
}
pub extern fn lean_io_result_show_error(r: b_lean_obj_arg) void;
pub extern fn lean_io_mark_end_initialization() void;
pub fn lean_io_result_mk_ok(arg_a: lean_obj_arg) callconv(.c) lean_obj_res {
    var a = arg_a;
    _ = &a;
    var r: ?*lean_object = lean_alloc_ctor(@as(c_uint, @bitCast(@as(c_int, 0))), @as(c_uint, @bitCast(@as(c_int, 1))), @as(c_uint, @bitCast(@as(c_int, 0))));
    _ = &r;
    lean_ctor_set(r, @as(c_uint, @bitCast(@as(c_int, 0))), a);
    return r;
}
pub fn lean_io_result_mk_error(arg_e: lean_obj_arg) callconv(.c) lean_obj_res {
    var e = arg_e;
    _ = &e;
    var r: ?*lean_object = lean_alloc_ctor(@as(c_uint, @bitCast(@as(c_int, 1))), @as(c_uint, @bitCast(@as(c_int, 1))), @as(c_uint, @bitCast(@as(c_int, 0))));
    _ = &r;
    lean_ctor_set(r, @as(c_uint, @bitCast(@as(c_int, 0))), e);
    return r;
}
pub extern fn lean_mk_io_error_already_exists(u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_already_exists_file(lean_obj_arg, u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_eof(lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_hardware_fault(u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_illegal_operation(u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_inappropriate_type(u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_inappropriate_type_file(lean_obj_arg, u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_interrupted(lean_obj_arg, u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_invalid_argument(u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_invalid_argument_file(lean_obj_arg, u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_no_file_or_directory(lean_obj_arg, u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_no_such_thing(u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_no_such_thing_file(lean_obj_arg, u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_other_error(u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_permission_denied(u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_permission_denied_file(lean_obj_arg, u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_protocol_error(u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_resource_busy(u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_resource_exhausted(u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_resource_exhausted_file(lean_obj_arg, u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_resource_vanished(u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_time_expired(u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_unsatisfied_constraints(u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_error_unsupported_operation(u32, lean_obj_arg) lean_obj_res;
pub extern fn lean_mk_io_user_error(str: lean_obj_arg) lean_obj_res;
pub extern fn lean_st_mk_ref(lean_obj_arg) lean_obj_res;
pub extern fn lean_st_ref_get(b_lean_obj_arg) lean_obj_res;
pub extern fn lean_st_ref_set(b_lean_obj_arg, lean_obj_arg) lean_obj_res;
pub extern fn lean_st_ref_reset(b_lean_obj_arg) lean_obj_res;
pub extern fn lean_st_ref_swap(b_lean_obj_arg, lean_obj_arg) lean_obj_res;
pub fn lean_ptr_addr(arg_a: b_lean_obj_arg) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    return @as(usize, @intCast(@intFromPtr(a)));
}
pub extern fn lean_name_eq(n1: b_lean_obj_arg, n2: b_lean_obj_arg) u8;
pub fn lean_name_hash_ptr(arg_n: b_lean_obj_arg) callconv(.c) u64 {
    var n = arg_n;
    _ = &n;
    {
        if (__builtin_expect(@as(c_long, @intFromBool(!!lean_is_scalar(n))), @as(c_long, @bitCast(@as(c_long, @as(c_int, 0))))) != 0) {
            lean_notify_assert("/home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h", @as(c_int, 2906), "!lean_is_scalar(n)");
        }
    }
    return lean_ctor_get_uint64(n, @as(c_uint, @bitCast(@as(c_uint, @truncate(@sizeOf(?*lean_object) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2)))))))));
}
pub fn lean_name_hash(arg_n: b_lean_obj_arg) callconv(.c) u64 {
    var n = arg_n;
    _ = &n;
    if (lean_is_scalar(n)) return @as(u64, @bitCast(@as(c_long, @as(c_int, 1723)))) else return lean_name_hash_ptr(n);
    return @import("std").mem.zeroes(u64);
}
pub fn lean_float_to_uint8(arg_a: f64) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    return @as(u8, @bitCast(@as(i8, @truncate(if (0.0 <= a) if (a < 256.0) @as(c_int, @bitCast(@as(c_uint, @as(u8, @intFromFloat(a))))) else @as(c_int, 255) else @as(c_int, 0)))));
}
pub fn lean_float_to_uint16(arg_a: f64) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    return @as(u16, @bitCast(@as(c_short, @truncate(if (0.0 <= a) if (a < 65536.0) @as(c_int, @bitCast(@as(c_uint, @as(u16, @intFromFloat(a))))) else @as(c_int, 65535) else @as(c_int, 0)))));
}
pub fn lean_float_to_uint32(arg_a: f64) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    return if (0.0 <= a) if (a < 4294967296.0) @as(u32, @intFromFloat(a)) else @as(c_uint, 4294967295) else @as(c_uint, @bitCast(@as(c_int, 0)));
}
pub fn lean_float_to_uint64(arg_a: f64) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    return if (0.0 <= a) if (a < 18446744073709552000.0) @as(u64, @intFromFloat(a)) else @as(c_ulong, 18446744073709551615) else @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 0))));
}
pub fn lean_float_to_usize(arg_a: f64) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    if (@sizeOf(usize) == @sizeOf(u64)) return @as(usize, @bitCast(lean_float_to_uint64(a))) else return @as(usize, @bitCast(@as(c_ulong, lean_float_to_uint32(a))));
    return @import("std").mem.zeroes(usize);
}
pub fn lean_float_to_int8(arg_a: f64) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var result: i8 = undefined;
    _ = &result;
    if (lean_float_isnan(a) != 0) {
        result = 0;
    } else {
        result = @as(i8, @bitCast(@as(i8, @truncate(if (-129.0 < a) if (a < 128.0) @as(c_int, @bitCast(@as(c_int, @as(i8, @intFromFloat(a))))) else @as(c_int, 127) else -@as(c_int, 128)))));
    }
    return @as(u8, @bitCast(result));
}
pub fn lean_float_to_int16(arg_a: f64) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    var result: i16 = undefined;
    _ = &result;
    if (lean_float_isnan(a) != 0) {
        result = 0;
    } else {
        result = @as(i16, @bitCast(@as(c_short, @truncate(if (-32769.0 < a) if (a < 32768.0) @as(c_int, @bitCast(@as(c_int, @as(i16, @intFromFloat(a))))) else @as(c_int, 32767) else -@as(c_int, 32767) - @as(c_int, 1)))));
    }
    return @as(u16, @bitCast(result));
}
pub fn lean_float_to_int32(arg_a: f64) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    var result: i32 = undefined;
    _ = &result;
    if (lean_float_isnan(a) != 0) {
        result = 0;
    } else {
        result = if (-2147483649.0 < a) if (a < 2147483648.0) @as(i32, @intFromFloat(a)) else @as(c_int, 2147483647) else -@as(c_int, 2147483647) - @as(c_int, 1);
    }
    return @as(u32, @bitCast(result));
}
pub fn lean_float_to_int64(arg_a: f64) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    var result: i64 = undefined;
    _ = &result;
    if (lean_float_isnan(a) != 0) {
        result = 0;
    } else {
        result = if (-9223372036854776000.0 < a) if (a < 9223372036854776000.0) @as(i64, @intFromFloat(a)) else @as(c_long, 9223372036854775807) else -@as(c_long, 9223372036854775807) - @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))));
    }
    return @as(u64, @bitCast(result));
}
pub fn lean_float_to_isize(arg_a: f64) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    if (@sizeOf(usize) == @sizeOf(u64)) {
        var result: ptrdiff_t = undefined;
        _ = &result;
        if (lean_float_isnan(a) != 0) {
            result = 0;
        } else {
            result = if (-9223372036854776000.0 < a) if (a < 9223372036854776000.0) @as(ptrdiff_t, @intFromFloat(a)) else @as(c_long, 9223372036854775807) else -@as(c_long, 9223372036854775807) - @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))));
        }
        return @as(usize, @bitCast(result));
    } else {
        var result: ptrdiff_t = undefined;
        _ = &result;
        if (lean_float_isnan(a) != 0) {
            result = 0;
        } else {
            result = if (-2147483649.0 < a) if (a < 2147483648.0) @as(ptrdiff_t, @intFromFloat(a)) else @as(ptrdiff_t, @bitCast(@as(c_long, @as(c_int, 2147483647)))) else @as(ptrdiff_t, @bitCast(@as(c_long, -@as(c_int, 2147483647) - @as(c_int, 1))));
        }
        return @as(usize, @bitCast(result));
    }
    return @import("std").mem.zeroes(usize);
}
pub extern fn lean_float_of_bits(u: u64) f64;
pub extern fn lean_float_to_bits(d: f64) u64;
pub fn lean_float_add(arg_a: f64, arg_b: f64) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a + b;
}
pub fn lean_float_sub(arg_a: f64, arg_b: f64) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a - b;
}
pub fn lean_float_mul(arg_a: f64, arg_b: f64) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a * b;
}
pub fn lean_float_div(arg_a: f64, arg_b: f64) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a / b;
}
pub fn lean_float_negate(arg_a: f64) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    return -a;
}
pub fn lean_float_beq(arg_a: f64, arg_b: f64) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return @as(u8, @intFromBool(a == b));
}
pub fn lean_float_decLe(arg_a: f64, arg_b: f64) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return @as(u8, @intFromBool(a <= b));
}
pub fn lean_float_decLt(arg_a: f64, arg_b: f64) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return @as(u8, @intFromBool(a < b));
}
pub fn lean_uint8_to_float(arg_a: u8) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    return @as(f64, @floatFromInt(a));
}
pub fn lean_uint16_to_float(arg_a: u16) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    return @as(f64, @floatFromInt(a));
}
pub fn lean_uint32_to_float(arg_a: u32) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    return @as(f64, @floatFromInt(a));
}
pub fn lean_uint64_to_float(arg_a: u64) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    return @as(f64, @floatFromInt(a));
}
pub fn lean_usize_to_float(arg_a: usize) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    return @as(f64, @floatFromInt(a));
}
pub fn lean_int8_to_float(arg_a: u8) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    return @as(f64, @floatFromInt(@as(i8, @bitCast(a))));
}
pub fn lean_int16_to_float(arg_a: u16) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    return @as(f64, @floatFromInt(@as(i16, @bitCast(a))));
}
pub fn lean_int32_to_float(arg_a: u32) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    return @as(f64, @floatFromInt(@as(i32, @bitCast(a))));
}
pub fn lean_int64_to_float(arg_a: u64) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    return @as(f64, @floatFromInt(@as(i64, @bitCast(a))));
}
pub fn lean_isize_to_float(arg_a: usize) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    return @as(f64, @floatFromInt(@as(ptrdiff_t, @bitCast(a))));
}
pub fn lean_float32_to_uint8(arg_a: f32) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    return @as(u8, @bitCast(@as(i8, @truncate(if (0.0 <= @as(f64, @floatCast(a))) if (@as(f64, @floatCast(a)) < 256.0) @as(c_int, @bitCast(@as(c_uint, @as(u8, @intFromFloat(a))))) else @as(c_int, 255) else @as(c_int, 0)))));
}
pub fn lean_float32_to_uint16(arg_a: f32) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    return @as(u16, @bitCast(@as(c_short, @truncate(if (0.0 <= @as(f64, @floatCast(a))) if (@as(f64, @floatCast(a)) < 65536.0) @as(c_int, @bitCast(@as(c_uint, @as(u16, @intFromFloat(a))))) else @as(c_int, 65535) else @as(c_int, 0)))));
}
pub fn lean_float32_to_uint32(arg_a: f32) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    return if (0.0 <= @as(f64, @floatCast(a))) if (@as(f64, @floatCast(a)) < 4294967296.0) @as(u32, @intFromFloat(a)) else @as(c_uint, 4294967295) else @as(c_uint, @bitCast(@as(c_int, 0)));
}
pub fn lean_float32_to_uint64(arg_a: f32) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    return if (0.0 <= @as(f64, @floatCast(a))) if (@as(f64, @floatCast(a)) < 18446744073709552000.0) @as(u64, @intFromFloat(a)) else @as(c_ulong, 18446744073709551615) else @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 0))));
}
pub fn lean_float32_to_usize(arg_a: f32) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    if (@sizeOf(usize) == @sizeOf(u64)) return @as(usize, @bitCast(lean_float32_to_uint64(a))) else return @as(usize, @bitCast(@as(c_ulong, lean_float32_to_uint32(a))));
    return @import("std").mem.zeroes(usize);
}
pub fn lean_float32_to_int8(arg_a: f32) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var result: i8 = undefined;
    _ = &result;
    if (lean_float32_isnan(a) != 0) {
        result = 0;
    } else {
        result = @as(i8, @bitCast(@as(i8, @truncate(if (-129.0 < @as(f64, @floatCast(a))) if (@as(f64, @floatCast(a)) < 128.0) @as(c_int, @bitCast(@as(c_int, @as(i8, @intFromFloat(a))))) else @as(c_int, 127) else -@as(c_int, 128)))));
    }
    return @as(u8, @bitCast(result));
}
pub fn lean_float32_to_int16(arg_a: f32) callconv(.c) u16 {
    var a = arg_a;
    _ = &a;
    var result: i16 = undefined;
    _ = &result;
    if (lean_float32_isnan(a) != 0) {
        result = 0;
    } else {
        result = @as(i16, @bitCast(@as(c_short, @truncate(if (-32769.0 < @as(f64, @floatCast(a))) if (@as(f64, @floatCast(a)) < 32768.0) @as(c_int, @bitCast(@as(c_int, @as(i16, @intFromFloat(a))))) else @as(c_int, 32767) else -@as(c_int, 32767) - @as(c_int, 1)))));
    }
    return @as(u16, @bitCast(result));
}
pub fn lean_float32_to_int32(arg_a: f32) callconv(.c) u32 {
    var a = arg_a;
    _ = &a;
    var result: i32 = undefined;
    _ = &result;
    if (lean_float32_isnan(a) != 0) {
        result = 0;
    } else {
        result = if (-2147483649.0 < @as(f64, @floatCast(a))) if (@as(f64, @floatCast(a)) < 2147483648.0) @as(i32, @intFromFloat(a)) else @as(c_int, 2147483647) else -@as(c_int, 2147483647) - @as(c_int, 1);
    }
    return @as(u32, @bitCast(result));
}
pub fn lean_float32_to_int64(arg_a: f32) callconv(.c) u64 {
    var a = arg_a;
    _ = &a;
    var result: i64 = undefined;
    _ = &result;
    if (lean_float32_isnan(a) != 0) {
        result = 0;
    } else {
        result = if (-9223372036854776000.0 < @as(f64, @floatCast(a))) if (@as(f64, @floatCast(a)) < 9223372036854776000.0) @as(i64, @intFromFloat(a)) else @as(c_long, 9223372036854775807) else -@as(c_long, 9223372036854775807) - @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))));
    }
    return @as(u64, @bitCast(result));
}
pub fn lean_float32_to_isize(arg_a: f32) callconv(.c) usize {
    var a = arg_a;
    _ = &a;
    if (@sizeOf(usize) == @sizeOf(u64)) {
        var result: ptrdiff_t = undefined;
        _ = &result;
        if (lean_float32_isnan(a) != 0) {
            result = 0;
        } else {
            result = if (-9223372036854776000.0 < @as(f64, @floatCast(a))) if (@as(f64, @floatCast(a)) < 9223372036854776000.0) @as(ptrdiff_t, @intFromFloat(a)) else @as(c_long, 9223372036854775807) else -@as(c_long, 9223372036854775807) - @as(c_long, @bitCast(@as(c_long, @as(c_int, 1))));
        }
        return @as(usize, @bitCast(result));
    } else {
        var result: ptrdiff_t = undefined;
        _ = &result;
        if (lean_float32_isnan(a) != 0) {
            result = 0;
        } else {
            result = if (-2147483649.0 < @as(f64, @floatCast(a))) if (@as(f64, @floatCast(a)) < 2147483648.0) @as(ptrdiff_t, @intFromFloat(a)) else @as(ptrdiff_t, @bitCast(@as(c_long, @as(c_int, 2147483647)))) else @as(ptrdiff_t, @bitCast(@as(c_long, -@as(c_int, 2147483647) - @as(c_int, 1))));
        }
        return @as(usize, @bitCast(result));
    }
    return @import("std").mem.zeroes(usize);
}
pub extern fn lean_float32_of_bits(u: u32) f32;
pub extern fn lean_float32_to_bits(d: f32) u32;
pub fn lean_float32_add(arg_a: f32, arg_b: f32) callconv(.c) f32 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a + b;
}
pub fn lean_float32_sub(arg_a: f32, arg_b: f32) callconv(.c) f32 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a - b;
}
pub fn lean_float32_mul(arg_a: f32, arg_b: f32) callconv(.c) f32 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a * b;
}
pub fn lean_float32_div(arg_a: f32, arg_b: f32) callconv(.c) f32 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return a / b;
}
pub fn lean_float32_negate(arg_a: f32) callconv(.c) f32 {
    var a = arg_a;
    _ = &a;
    return -a;
}
pub fn lean_float32_beq(arg_a: f32, arg_b: f32) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return @as(u8, @intFromBool(a == b));
}
pub fn lean_float32_decLe(arg_a: f32, arg_b: f32) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return @as(u8, @intFromBool(a <= b));
}
pub fn lean_float32_decLt(arg_a: f32, arg_b: f32) callconv(.c) u8 {
    var a = arg_a;
    _ = &a;
    var b = arg_b;
    _ = &b;
    return @as(u8, @intFromBool(a < b));
}
pub fn lean_uint8_to_float32(arg_a: u8) callconv(.c) f32 {
    var a = arg_a;
    _ = &a;
    return @as(f32, @floatFromInt(a));
}
pub fn lean_uint16_to_float32(arg_a: u16) callconv(.c) f32 {
    var a = arg_a;
    _ = &a;
    return @as(f32, @floatFromInt(a));
}
pub fn lean_uint32_to_float32(arg_a: u32) callconv(.c) f32 {
    var a = arg_a;
    _ = &a;
    return @as(f32, @floatFromInt(a));
}
pub fn lean_uint64_to_float32(arg_a: u64) callconv(.c) f32 {
    var a = arg_a;
    _ = &a;
    return @as(f32, @floatFromInt(a));
}
pub fn lean_usize_to_float32(arg_a: usize) callconv(.c) f32 {
    var a = arg_a;
    _ = &a;
    return @as(f32, @floatFromInt(a));
}
pub fn lean_int8_to_float32(arg_a: u8) callconv(.c) f32 {
    var a = arg_a;
    _ = &a;
    return @as(f32, @floatFromInt(@as(i8, @bitCast(a))));
}
pub fn lean_int16_to_float32(arg_a: u16) callconv(.c) f32 {
    var a = arg_a;
    _ = &a;
    return @as(f32, @floatFromInt(@as(i16, @bitCast(a))));
}
pub fn lean_int32_to_float32(arg_a: u32) callconv(.c) f32 {
    var a = arg_a;
    _ = &a;
    return @as(f32, @floatFromInt(@as(i32, @bitCast(a))));
}
pub fn lean_int64_to_float32(arg_a: u64) callconv(.c) f32 {
    var a = arg_a;
    _ = &a;
    return @as(f32, @floatFromInt(@as(i64, @bitCast(a))));
}
pub fn lean_isize_to_float32(arg_a: usize) callconv(.c) f32 {
    var a = arg_a;
    _ = &a;
    return @as(f32, @floatFromInt(@as(ptrdiff_t, @bitCast(a))));
}
pub fn lean_float_to_float32(arg_a: f64) callconv(.c) f32 {
    var a = arg_a;
    _ = &a;
    return @as(f32, @floatCast(a));
}
pub fn lean_float32_to_float(arg_a: f32) callconv(.c) f64 {
    var a = arg_a;
    _ = &a;
    return @as(f64, @floatCast(a));
}
pub fn lean_hashmap_mk_idx(arg_sz: lean_obj_arg, arg_hash: u64) callconv(.c) usize {
    var sz = arg_sz;
    _ = &sz;
    var hash = arg_hash;
    _ = &hash;
    return @as(usize, @bitCast(hash & (lean_unbox(sz) -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))))));
}
pub fn lean_hashset_mk_idx(arg_sz: lean_obj_arg, arg_hash: u64) callconv(.c) usize {
    var sz = arg_sz;
    _ = &sz;
    var hash = arg_hash;
    _ = &hash;
    return @as(usize, @bitCast(hash & (lean_unbox(sz) -% @as(usize, @bitCast(@as(c_long, @as(c_int, 1)))))));
}
pub fn lean_expr_data(arg_expr: lean_obj_arg) callconv(.c) u64 {
    var expr = arg_expr;
    _ = &expr;
    return lean_ctor_get_uint64(expr, @as(c_uint, @bitCast(@as(c_uint, @truncate(@as(c_ulong, @bitCast(@as(c_ulong, lean_ctor_num_objs(expr)))) *% @sizeOf(?*anyopaque))))));
}
pub fn lean_get_max_ctor_fields(arg__unit: lean_obj_arg) callconv(.c) lean_obj_res {
    var _unit = arg__unit;
    _ = &_unit;
    return lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 256)))));
}
pub fn lean_get_max_ctor_scalars_size(arg__unit: lean_obj_arg) callconv(.c) lean_obj_res {
    var _unit = arg__unit;
    _ = &_unit;
    return lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 1024)))));
}
pub fn lean_get_usize_size(arg__unit: lean_obj_arg) callconv(.c) lean_obj_res {
    var _unit = arg__unit;
    _ = &_unit;
    return lean_box(@sizeOf(usize));
}
pub fn lean_get_max_ctor_tag(arg__unit: lean_obj_arg) callconv(.c) lean_obj_res {
    var _unit = arg__unit;
    _ = &_unit;
    return lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 243)))));
}
pub fn lean_strict_or(arg_b1: u8, arg_b2: u8) callconv(.c) u8 {
    var b1 = arg_b1;
    _ = &b1;
    var b2 = arg_b2;
    _ = &b2;
    return @as(u8, @intFromBool((@as(c_int, @bitCast(@as(c_uint, b1))) != 0) or (@as(c_int, @bitCast(@as(c_uint, b2))) != 0)));
}
pub fn lean_strict_and(arg_b1: u8, arg_b2: u8) callconv(.c) u8 {
    var b1 = arg_b1;
    _ = &b1;
    var b2 = arg_b2;
    _ = &b2;
    return @as(u8, @intFromBool((@as(c_int, @bitCast(@as(c_uint, b1))) != 0) and (@as(c_int, @bitCast(@as(c_uint, b2))) != 0)));
}
pub fn lean_version_get_major(arg__unit: lean_obj_arg) callconv(.c) lean_obj_res {
    var _unit = arg__unit;
    _ = &_unit;
    return lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 4)))));
}
pub fn lean_version_get_minor(arg__unit: lean_obj_arg) callconv(.c) lean_obj_res {
    var _unit = arg__unit;
    _ = &_unit;
    return lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 26)))));
}
pub fn lean_version_get_patch(arg__unit: lean_obj_arg) callconv(.c) lean_obj_res {
    var _unit = arg__unit;
    _ = &_unit;
    return lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 0)))));
}
pub fn lean_version_get_is_release(arg__unit: lean_obj_arg) callconv(.c) u8 {
    var _unit = arg__unit;
    _ = &_unit;
    return 1;
}
pub fn lean_version_get_special_desc(arg__unit: lean_obj_arg) callconv(.c) lean_obj_res {
    var _unit = arg__unit;
    _ = &_unit;
    return lean_mk_string("");
}
pub fn lean_system_platform_target(arg__unit: lean_obj_arg) callconv(.c) lean_obj_res {
    var _unit = arg__unit;
    _ = &_unit;
    return lean_mk_string("x86_64-unknown-linux-gnu");
}
pub fn lean_internal_is_stage0(arg__unit: lean_obj_arg) callconv(.c) u8 {
    var _unit = arg__unit;
    _ = &_unit;
    return 0;
}
pub fn lean_nat_pred(arg_n: b_lean_obj_arg) callconv(.c) lean_obj_res {
    var n = arg_n;
    _ = &n;
    return lean_nat_sub(n, lean_box(@as(usize, @bitCast(@as(c_long, @as(c_int, 1))))));
}
pub fn lean_manual_get_root(arg__unit: lean_obj_arg) callconv(.c) lean_obj_res {
    var _unit = arg__unit;
    _ = &_unit;
    return lean_mk_string("https://lean-lang.org/doc/reference/4.26.0/");
}
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 20);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 8);
pub const __clang_version__ = "20.1.8 ";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 20.1.8";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 1);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):95:9
pub const __INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):102:9
pub const __UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_NORM_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_NORM_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_NORM_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_NORM_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub inline fn __INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub inline fn __INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub inline fn __INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):207:9
pub const __INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub inline fn __UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub inline fn __UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):232:9
pub const __UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):241:9
pub const __UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __GCC_DESTRUCTIVE_SIZE = @as(c_int, 64);
pub const __GCC_CONSTRUCTIVE_SIZE = @as(c_int, 64);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __ELF__ = @as(c_int, 1);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):376:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):377:9
pub const __corei7 = @as(c_int, 1);
pub const __corei7__ = @as(c_int, 1);
pub const __tune_corei7__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __GFNI__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __PKU__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __KL__ = @as(c_int, 1);
pub const __WIDEKL__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __WAITPKG__ = @as(c_int, 1);
pub const __MOVDIRI__ = @as(c_int, 1);
pub const __MOVDIR64B__ = @as(c_int, 1);
pub const __PTWRITE__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __HRESET__ = @as(c_int, 1);
pub const __AVXVNNI__ = @as(c_int, 1);
pub const __SERIALIZE__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const __GLIBC_MINOR__ = @as(c_int, 42);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const __need_ptrdiff_t = "";
pub const __need_size_t = "";
pub const __need_wchar_t = "";
pub const __need_NULL = "";
pub const __need_max_align_t = "";
pub const __need_offsetof = "";
pub const __STDDEF_H = "";
pub const _PTRDIFF_T = "";
pub const _SIZE_T = "";
pub const _WCHAR_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const offsetof = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /usr/lib/zig/include/__stddef_offsetof.h:16:9
pub const __STDBOOL_H = "";
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H = @as(c_int, 1);
pub const __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = "";
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`");
// /usr/include/features.h:191:9
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2Y = @as(c_int, 0);
pub const __GLIBC_USE_ISOC23 = @as(c_int, 0);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __TIMESIZE = __WORDSIZE;
pub const __USE_TIME_BITS64 = @as(c_int, 1);
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const __GLIBC_USE_C23_STRTOL = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_60559_BFP__ = @as(c_long, 201404);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_IEC_60559_COMPLEX__ = @as(c_long, 201404);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`");
// /usr/include/sys/cdefs.h:45:10
pub inline fn __glibc_has_builtin(name: anytype) @TypeOf(__has_builtin(name)) {
    _ = &name;
    return __has_builtin(name);
}
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`");
// /usr/include/sys/cdefs.h:55:10
pub const __LEAF = "";
pub const __LEAF_ATTR = "";
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:79:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:80:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:81:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:82:11
pub const __COLD = @compileError("unable to translate macro: undefined identifier `__cold__`");
// /usr/include/sys/cdefs.h:102:11
pub inline fn __P(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'");
// /usr/include/sys/cdefs.h:131:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'");
// /usr/include/sys/cdefs.h:132:9
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub const __attribute_overloadable__ = @compileError("unable to translate macro: undefined identifier `__overloadable__`");
// /usr/include/sys/cdefs.h:151:10
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    _ = &ptr;
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    _ = &ptr;
    return __builtin_object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    _ = &__o;
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    _ = &__o;
    return __bos(__o);
}
pub const __warnattr = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:370:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/sys/cdefs.h:371:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['");
// /usr/include/sys/cdefs.h:379:10
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub const __REDIRECT = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/sys/cdefs.h:410:10
pub const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/sys/cdefs.h:417:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/sys/cdefs.h:419:11
pub const __ASMNAME = @compileError("unable to translate C expr: unexpected token ','");
// /usr/include/sys/cdefs.h:422:10
pub inline fn __ASMNAME2(prefix: anytype, cname: anytype) @TypeOf(__STRING(prefix) ++ cname) {
    _ = &prefix;
    _ = &cname;
    return __STRING(prefix) ++ cname;
}
pub const __REDIRECT_FORTIFY = __REDIRECT;
pub const __REDIRECT_FORTIFY_NTH = __REDIRECT_NTH;
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__malloc__`");
// /usr/include/sys/cdefs.h:452:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:463:10
pub const __attribute_alloc_align__ = @compileError("unable to translate macro: undefined identifier `__alloc_align__`");
// /usr/include/sys/cdefs.h:469:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__pure__`");
// /usr/include/sys/cdefs.h:479:10
pub const __attribute_const__ = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /usr/include/sys/cdefs.h:486:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__unused__`");
// /usr/include/sys/cdefs.h:492:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__used__`");
// /usr/include/sys/cdefs.h:501:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__noinline__`");
// /usr/include/sys/cdefs.h:502:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/sys/cdefs.h:510:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/sys/cdefs.h:520:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__format_arg__`");
// /usr/include/sys/cdefs.h:533:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__format__`");
// /usr/include/sys/cdefs.h:543:10
pub const __attribute_nonnull__ = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /usr/include/sys/cdefs.h:555:11
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute_nonnull__(params)) {
    _ = &params;
    return __attribute_nonnull__(params);
}
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__returns_nonnull__`");
// /usr/include/sys/cdefs.h:568:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`");
// /usr/include/sys/cdefs.h:577:10
pub const __wur = "";
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /usr/include/sys/cdefs.h:595:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__artificial__`");
// /usr/include/sys/cdefs.h:604:10
pub const __extern_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /usr/include/sys/cdefs.h:622:11
pub const __extern_always_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /usr/include/sys/cdefs.h:623:11
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'");
// /usr/include/sys/cdefs.h:666:10
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:715:10
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    return name ++ proto ++ __THROW;
}
pub const __LDBL_REDIR2_DECL = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:792:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:793:10
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /usr/include/sys/cdefs.h:807:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`");
// /usr/include/sys/cdefs.h:808:10
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __fortified_attr_access = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:853:11
pub const __attr_access = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:854:11
pub const __attr_access_none = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:855:11
pub const __attr_dealloc = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:865:10
pub const __attr_dealloc_free = "";
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__returns_twice__`");
// /usr/include/sys/cdefs.h:872:10
pub const __attribute_struct_may_alias__ = @compileError("unable to translate macro: undefined identifier `__may_alias__`");
// /usr/include/sys/cdefs.h:881:10
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C23 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C23 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token 'typedef'");
// /usr/include/bits/types.h:137:10
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`");
// /usr/include/bits/typesizes.h:73:9
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const _BITS_WCHAR_H = @as(c_int, 1);
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __WCHAR_MIN = -__WCHAR_MAX - @as(c_int, 1);
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const _BITS_STDINT_UINTN_H = @as(c_int, 1);
pub const _BITS_STDINT_LEAST_H = @as(c_int, 1);
pub const __intptr_t_defined = "";
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_LEAST8_MIN = -@as(c_int, 128);
pub const INT_LEAST16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT_LEAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_LEAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_LEAST8_MAX = @as(c_int, 127);
pub const INT_LEAST16_MAX = @as(c_int, 32767);
pub const INT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_LEAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_LEAST8_MAX = @as(c_int, 255);
pub const UINT_LEAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_FAST8_MIN = -@as(c_int, 128);
pub const INT_FAST16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_FAST8_MAX = @as(c_int, 127);
pub const INT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_FAST8_MAX = @as(c_int, 255);
pub const UINT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTPTR_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const UINTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INTMAX_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const PTRDIFF_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const PTRDIFF_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const SIG_ATOMIC_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const SIG_ATOMIC_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const WCHAR_MIN = __WCHAR_MIN;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __CLANG_LIMITS_H = "";
pub const _GCC_LIMITS_H_ = "";
pub const _LIBC_LIMITS_H_ = @as(c_int, 1);
pub const MB_LEN_MAX = @as(c_int, 16);
pub const LLONG_MIN = -LLONG_MAX - @as(c_int, 1);
pub const LLONG_MAX = __LONG_LONG_MAX__;
pub const ULLONG_MAX = (LLONG_MAX * @as(c_ulonglong, 2)) + @as(c_int, 1);
pub const _BITS_POSIX1_LIM_H = @as(c_int, 1);
pub const _POSIX_AIO_LISTIO_MAX = @as(c_int, 2);
pub const _POSIX_AIO_MAX = @as(c_int, 1);
pub const _POSIX_ARG_MAX = @as(c_int, 4096);
pub const _POSIX_CHILD_MAX = @as(c_int, 25);
pub const _POSIX_DELAYTIMER_MAX = @as(c_int, 32);
pub const _POSIX_HOST_NAME_MAX = @as(c_int, 255);
pub const _POSIX_LINK_MAX = @as(c_int, 8);
pub const _POSIX_LOGIN_NAME_MAX = @as(c_int, 9);
pub const _POSIX_MAX_CANON = @as(c_int, 255);
pub const _POSIX_MAX_INPUT = @as(c_int, 255);
pub const _POSIX_MQ_OPEN_MAX = @as(c_int, 8);
pub const _POSIX_MQ_PRIO_MAX = @as(c_int, 32);
pub const _POSIX_NAME_MAX = @as(c_int, 14);
pub const _POSIX_NGROUPS_MAX = @as(c_int, 8);
pub const _POSIX_OPEN_MAX = @as(c_int, 20);
pub const _POSIX_PATH_MAX = @as(c_int, 256);
pub const _POSIX_PIPE_BUF = @as(c_int, 512);
pub const _POSIX_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX_RTSIG_MAX = @as(c_int, 8);
pub const _POSIX_SEM_NSEMS_MAX = @as(c_int, 256);
pub const _POSIX_SEM_VALUE_MAX = @as(c_int, 32767);
pub const _POSIX_SIGQUEUE_MAX = @as(c_int, 32);
pub const _POSIX_SSIZE_MAX = @as(c_int, 32767);
pub const _POSIX_STREAM_MAX = @as(c_int, 8);
pub const _POSIX_SYMLINK_MAX = @as(c_int, 255);
pub const _POSIX_SYMLOOP_MAX = @as(c_int, 8);
pub const _POSIX_TIMER_MAX = @as(c_int, 32);
pub const _POSIX_TTY_NAME_MAX = @as(c_int, 9);
pub const _POSIX_TZNAME_MAX = @as(c_int, 6);
pub const _POSIX_CLOCKRES_MIN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 20000000, .decimal);
pub const __undef_NR_OPEN = "";
pub const __undef_LINK_MAX = "";
pub const __undef_OPEN_MAX = "";
pub const __undef_ARG_MAX = "";
pub const _LINUX_LIMITS_H = "";
pub const NR_OPEN = @as(c_int, 1024);
pub const NGROUPS_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const ARG_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 131072, .decimal);
pub const LINK_MAX = @as(c_int, 127);
pub const MAX_CANON = @as(c_int, 255);
pub const MAX_INPUT = @as(c_int, 255);
pub const NAME_MAX = @as(c_int, 255);
pub const PATH_MAX = @as(c_int, 4096);
pub const PIPE_BUF = @as(c_int, 4096);
pub const XATTR_NAME_MAX = @as(c_int, 255);
pub const XATTR_SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const XATTR_LIST_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const RTSIG_MAX = @as(c_int, 32);
pub const _POSIX_THREAD_KEYS_MAX = @as(c_int, 128);
pub const PTHREAD_KEYS_MAX = @as(c_int, 1024);
pub const _POSIX_THREAD_DESTRUCTOR_ITERATIONS = @as(c_int, 4);
pub const PTHREAD_DESTRUCTOR_ITERATIONS = _POSIX_THREAD_DESTRUCTOR_ITERATIONS;
pub const _POSIX_THREAD_THREADS_MAX = @as(c_int, 64);
pub const AIO_PRIO_DELTA_MAX = @as(c_int, 20);
pub const PTHREAD_STACK_MIN = @as(c_int, 16384);
pub const DELAYTIMER_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const TTY_NAME_MAX = @as(c_int, 32);
pub const LOGIN_NAME_MAX = @as(c_int, 256);
pub const HOST_NAME_MAX = @as(c_int, 64);
pub const MQ_PRIO_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const SEM_VALUE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SSIZE_MAX = LONG_MAX;
pub const _BITS_POSIX2_LIM_H = @as(c_int, 1);
pub const _POSIX2_BC_BASE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_DIM_MAX = @as(c_int, 2048);
pub const _POSIX2_BC_SCALE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_STRING_MAX = @as(c_int, 1000);
pub const _POSIX2_COLL_WEIGHTS_MAX = @as(c_int, 2);
pub const _POSIX2_EXPR_NEST_MAX = @as(c_int, 32);
pub const _POSIX2_LINE_MAX = @as(c_int, 2048);
pub const _POSIX2_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX2_CHARCLASS_NAME_MAX = @as(c_int, 14);
pub const BC_BASE_MAX = _POSIX2_BC_BASE_MAX;
pub const BC_DIM_MAX = _POSIX2_BC_DIM_MAX;
pub const BC_SCALE_MAX = _POSIX2_BC_SCALE_MAX;
pub const BC_STRING_MAX = _POSIX2_BC_STRING_MAX;
pub const COLL_WEIGHTS_MAX = @as(c_int, 255);
pub const EXPR_NEST_MAX = _POSIX2_EXPR_NEST_MAX;
pub const LINE_MAX = _POSIX2_LINE_MAX;
pub const CHARCLASS_NAME_MAX = @as(c_int, 2048);
pub const RE_DUP_MAX = @as(c_int, 0x7fff);
pub const SCHAR_MAX = __SCHAR_MAX__;
pub const SHRT_MAX = __SHRT_MAX__;
pub const INT_MAX = __INT_MAX__;
pub const LONG_MAX = __LONG_MAX__;
pub const SCHAR_MIN = -__SCHAR_MAX__ - @as(c_int, 1);
pub const SHRT_MIN = -__SHRT_MAX__ - @as(c_int, 1);
pub const INT_MIN = -__INT_MAX__ - @as(c_int, 1);
pub const LONG_MIN = -__LONG_MAX__ - @as(c_long, 1);
pub const UCHAR_MAX = (__SCHAR_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const USHRT_MAX = (__SHRT_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const UINT_MAX = (__INT_MAX__ * @as(c_uint, 2)) + @as(c_uint, 1);
pub const ULONG_MAX = (__LONG_MAX__ * @as(c_ulong, 2)) + @as(c_ulong, 1);
pub const CHAR_BIT = __CHAR_BIT__;
pub const CHAR_MIN = SCHAR_MIN;
pub const CHAR_MAX = __SCHAR_MAX__;
pub const LEAN_VERSION_MAJOR = @as(c_int, 4);
pub const LEAN_VERSION_MINOR = @as(c_int, 26);
pub const LEAN_VERSION_PATCH = @as(c_int, 0);
pub const LEAN_VERSION_IS_RELEASE = @as(c_int, 1);
pub const LEAN_SPECIAL_VERSION_DESC = "";
pub const LEAN_VERSION_STRING = "4.26.0";
pub const LEAN_PLATFORM_TARGET = "x86_64-unknown-linux-gnu";
pub const LEAN_MANUAL_ROOT = "https://lean-lang.org/doc/reference/4.26.0/";
pub const LEAN_MIMALLOC = "";
pub const LEAN_IS_STAGE0 = @as(c_int, 0);
pub const MIMALLOC_H = "";
pub const MI_MALLOC_VERSION = @as(c_int, 223);
pub const mi_attr_noexcept = "";
pub const mi_decl_nodiscard = @compileError("unable to translate macro: undefined identifier `warn_unused_result`");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/mimalloc.h:30:11
pub const mi_decl_export = "";
pub const mi_cdecl = "";
pub const mi_decl_restrict = "";
pub const mi_attr_malloc = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/mimalloc.h:70:11
pub const mi_attr_alloc_size = @compileError("unable to translate C expr: unexpected token ''");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/mimalloc.h:72:13
pub const mi_attr_alloc_size2 = @compileError("unable to translate C expr: unexpected token ''");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/mimalloc.h:73:13
pub const mi_attr_alloc_align = @compileError("unable to translate C expr: unexpected token ''");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/mimalloc.h:74:13
pub const MI_SMALL_WSIZE_MAX = @as(c_int, 128);
pub const MI_SMALL_SIZE_MAX = MI_SMALL_WSIZE_MAX * @import("std").zig.c_translation.sizeof(?*anyopaque);
pub const mi_malloc_tp = @compileError("unable to translate C expr: unexpected token ')'");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/mimalloc.h:331:9
pub const mi_zalloc_tp = @compileError("unable to translate C expr: unexpected token ')'");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/mimalloc.h:332:9
pub const mi_calloc_tp = @compileError("unable to translate C expr: unexpected token ')'");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/mimalloc.h:333:9
pub const mi_mallocn_tp = @compileError("unable to translate C expr: unexpected token ')'");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/mimalloc.h:334:9
pub const mi_reallocn_tp = @compileError("unable to translate C expr: unexpected token ')'");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/mimalloc.h:335:9
pub const mi_recalloc_tp = @compileError("unable to translate C expr: unexpected token ')'");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/mimalloc.h:336:9
pub const mi_heap_malloc_tp = @compileError("unable to translate C expr: unexpected token ')'");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/mimalloc.h:338:9
pub const mi_heap_zalloc_tp = @compileError("unable to translate C expr: unexpected token ')'");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/mimalloc.h:339:9
pub const mi_heap_calloc_tp = @compileError("unable to translate C expr: unexpected token ')'");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/mimalloc.h:340:9
pub const mi_heap_mallocn_tp = @compileError("unable to translate C expr: unexpected token ')'");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/mimalloc.h:341:9
pub const mi_heap_reallocn_tp = @compileError("unable to translate C expr: unexpected token ')'");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/mimalloc.h:342:9
pub const mi_heap_recalloc_tp = @compileError("unable to translate C expr: unexpected token ')'");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/mimalloc.h:343:9
pub const __CLANG_STDATOMIC_H = "";
pub const ATOMIC_BOOL_LOCK_FREE = __CLANG_ATOMIC_BOOL_LOCK_FREE;
pub const ATOMIC_CHAR_LOCK_FREE = __CLANG_ATOMIC_CHAR_LOCK_FREE;
pub const ATOMIC_CHAR16_T_LOCK_FREE = __CLANG_ATOMIC_CHAR16_T_LOCK_FREE;
pub const ATOMIC_CHAR32_T_LOCK_FREE = __CLANG_ATOMIC_CHAR32_T_LOCK_FREE;
pub const ATOMIC_WCHAR_T_LOCK_FREE = __CLANG_ATOMIC_WCHAR_T_LOCK_FREE;
pub const ATOMIC_SHORT_LOCK_FREE = __CLANG_ATOMIC_SHORT_LOCK_FREE;
pub const ATOMIC_INT_LOCK_FREE = __CLANG_ATOMIC_INT_LOCK_FREE;
pub const ATOMIC_LONG_LOCK_FREE = __CLANG_ATOMIC_LONG_LOCK_FREE;
pub const ATOMIC_LLONG_LOCK_FREE = __CLANG_ATOMIC_LLONG_LOCK_FREE;
pub const ATOMIC_POINTER_LOCK_FREE = __CLANG_ATOMIC_POINTER_LOCK_FREE;
pub inline fn ATOMIC_VAR_INIT(value: anytype) @TypeOf(value) {
    _ = &value;
    return value;
}
pub const atomic_init = @compileError("unable to translate macro: undefined identifier `__c11_atomic_init`");
// /usr/lib/zig/include/stdatomic.h:64:9
pub inline fn kill_dependency(y: anytype) @TypeOf(y) {
    _ = &y;
    return y;
}
pub const atomic_is_lock_free = @compileError("unable to translate macro: undefined identifier `__c11_atomic_is_lock_free`");
// /usr/lib/zig/include/stdatomic.h:90:9
pub const atomic_store = @compileError("unable to translate macro: undefined identifier `__c11_atomic_store`");
// /usr/lib/zig/include/stdatomic.h:141:9
pub const atomic_store_explicit = @compileError("unable to translate macro: undefined identifier `__c11_atomic_store`");
// /usr/lib/zig/include/stdatomic.h:142:9
pub const atomic_load = @compileError("unable to translate macro: undefined identifier `__c11_atomic_load`");
// /usr/lib/zig/include/stdatomic.h:144:9
pub const atomic_load_explicit = @compileError("unable to translate macro: undefined identifier `__c11_atomic_load`");
// /usr/lib/zig/include/stdatomic.h:145:9
pub const atomic_exchange = @compileError("unable to translate macro: undefined identifier `__c11_atomic_exchange`");
// /usr/lib/zig/include/stdatomic.h:147:9
pub const atomic_exchange_explicit = @compileError("unable to translate macro: undefined identifier `__c11_atomic_exchange`");
// /usr/lib/zig/include/stdatomic.h:148:9
pub const atomic_compare_exchange_strong = @compileError("unable to translate macro: undefined identifier `__c11_atomic_compare_exchange_strong`");
// /usr/lib/zig/include/stdatomic.h:150:9
pub const atomic_compare_exchange_strong_explicit = @compileError("unable to translate macro: undefined identifier `__c11_atomic_compare_exchange_strong`");
// /usr/lib/zig/include/stdatomic.h:151:9
pub const atomic_compare_exchange_weak = @compileError("unable to translate macro: undefined identifier `__c11_atomic_compare_exchange_weak`");
// /usr/lib/zig/include/stdatomic.h:153:9
pub const atomic_compare_exchange_weak_explicit = @compileError("unable to translate macro: undefined identifier `__c11_atomic_compare_exchange_weak`");
// /usr/lib/zig/include/stdatomic.h:154:9
pub const atomic_fetch_add = @compileError("unable to translate macro: undefined identifier `__c11_atomic_fetch_add`");
// /usr/lib/zig/include/stdatomic.h:156:9
pub const atomic_fetch_add_explicit = @compileError("unable to translate macro: undefined identifier `__c11_atomic_fetch_add`");
// /usr/lib/zig/include/stdatomic.h:157:9
pub const atomic_fetch_sub = @compileError("unable to translate macro: undefined identifier `__c11_atomic_fetch_sub`");
// /usr/lib/zig/include/stdatomic.h:159:9
pub const atomic_fetch_sub_explicit = @compileError("unable to translate macro: undefined identifier `__c11_atomic_fetch_sub`");
// /usr/lib/zig/include/stdatomic.h:160:9
pub const atomic_fetch_or = @compileError("unable to translate macro: undefined identifier `__c11_atomic_fetch_or`");
// /usr/lib/zig/include/stdatomic.h:162:9
pub const atomic_fetch_or_explicit = @compileError("unable to translate macro: undefined identifier `__c11_atomic_fetch_or`");
// /usr/lib/zig/include/stdatomic.h:163:9
pub const atomic_fetch_xor = @compileError("unable to translate macro: undefined identifier `__c11_atomic_fetch_xor`");
// /usr/lib/zig/include/stdatomic.h:165:9
pub const atomic_fetch_xor_explicit = @compileError("unable to translate macro: undefined identifier `__c11_atomic_fetch_xor`");
// /usr/lib/zig/include/stdatomic.h:166:9
pub const atomic_fetch_and = @compileError("unable to translate macro: undefined identifier `__c11_atomic_fetch_and`");
// /usr/lib/zig/include/stdatomic.h:168:9
pub const atomic_fetch_and_explicit = @compileError("unable to translate macro: undefined identifier `__c11_atomic_fetch_and`");
// /usr/lib/zig/include/stdatomic.h:169:9
pub const ATOMIC_FLAG_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/lib/zig/include/stdatomic.h:178:9
pub const LEAN_USING_STD = "";
pub const LEAN_CLOSURE_MAX_ARGS = @as(c_int, 16);
pub const LEAN_OBJECT_SIZE_DELTA = @as(c_int, 8);
pub const LEAN_MAX_SMALL_OBJECT_SIZE = @as(c_int, 4096);
pub const LEAN_ALLOCA = @compileError("unable to translate macro: undefined identifier `alloca`");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:39:9
pub const LEAN_NORETURN = @compileError("unable to translate macro: undefined identifier `noreturn`");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:40:9
pub inline fn LEAN_UNLIKELY(x: anytype) @TypeOf(__builtin_expect(x, @as(c_int, 0))) {
    _ = &x;
    return __builtin_expect(x, @as(c_int, 0));
}
pub inline fn LEAN_LIKELY(x: anytype) @TypeOf(__builtin_expect(x, @as(c_int, 1))) {
    _ = &x;
    return __builtin_expect(x, @as(c_int, 1));
}
pub const LEAN_ALWAYS_INLINE = "";
pub const assert = @compileError("unable to translate macro: undefined identifier `__FILE__`");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:66:9
pub const LEAN_EXPORT = "";
pub inline fn LEAN_BYTE(Var: anytype, Index: anytype) @TypeOf((@import("std").zig.c_translation.cast([*c]u8, &Var) + Index).*) {
    _ = &Var;
    _ = &Index;
    return (@import("std").zig.c_translation.cast([*c]u8, &Var) + Index).*;
}
pub const LeanMaxCtorTag = @as(c_int, 243);
pub const LeanPromise = @as(c_int, 244);
pub const LeanClosure = @as(c_int, 245);
pub const LeanArray = @as(c_int, 246);
pub const LeanStructArray = @as(c_int, 247);
pub const LeanScalarArray = @as(c_int, 248);
pub const LeanString = @as(c_int, 249);
pub const LeanMPZ = @as(c_int, 250);
pub const LeanThunk = @as(c_int, 251);
pub const LeanTask = @as(c_int, 252);
pub const LeanRef = @as(c_int, 253);
pub const LeanExternal = @as(c_int, 254);
pub const LeanReserved = @as(c_int, 255);
pub const LEAN_MAX_CTOR_FIELDS = @as(c_int, 256);
pub const LEAN_MAX_CTOR_SCALARS_SIZE = @as(c_int, 1024);
pub const LEAN_CASSERT = @compileError("unable to translate macro: undefined identifier `__LINE__`");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:104:9
pub const LEAN_impl_PASTE = @compileError("unable to translate C expr: unexpected token '##'");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:106:9
pub const LEAN_impl_CASSERT_LINE = @compileError("unable to translate macro: undefined identifier `assertion_failed_`");
// /home/efvincent/.elan/toolchains/leanprover--lean4---v4.26.0/include/lean/lean.h:107:9
pub const LEAN_MAX_SMALL_NAT = SIZE_MAX >> @as(c_int, 1);
pub const LEAN_MAX_SMALL_INT = if (@import("std").zig.c_translation.sizeof(?*anyopaque) == @as(c_int, 8)) INT_MAX else INT_MAX >> @as(c_int, 1);
pub const LEAN_MIN_SMALL_INT = if (@import("std").zig.c_translation.sizeof(?*anyopaque) == @as(c_int, 8)) INT_MIN else INT_MIN >> @as(c_int, 1);
pub const mi_heap_s = struct_mi_heap_s;
pub const mi_heap_area_s = struct_mi_heap_area_s;
pub const mi_option_e = enum_mi_option_e;
pub const lean_task = struct_lean_task;
pub const lean_promise = struct_lean_promise;
