// Provide copy_file_range for compatibility with older glibc
// This is needed because Zig 0.15 references this symbol but Lean's bundled glibc doesn't have it

#define _GNU_SOURCE
#include <sys/syscall.h>
#include <unistd.h>
#include <sys/types.h>

#ifdef SYS_copy_file_range
ssize_t copy_file_range(int fd_in, off_t *off_in, int fd_out, off_t *off_out, size_t len, unsigned int flags) {
    return syscall(SYS_copy_file_range, fd_in, off_in, fd_out, off_out, len, flags);
}
#else
// Fallback if syscall not available
#include <errno.h>
ssize_t copy_file_range(int fd_in, off_t *off_in, int fd_out, off_t *off_out, size_t len, unsigned int flags) {
    (void)fd_in; (void)off_in; (void)fd_out; (void)off_out; (void)len; (void)flags;
    errno = ENOSYS;
    return -1;
}
#endif
