#ifndef _UEBPF_UTIL_H_
#define _UEBPF_UTIL_H_
#include <time.h>
#include <stdint.h>

#define handle_error(msg) \
    do { perror(msg); exit(EXIT_FAILURE); } while (0)

static inline uint64_t wall_time_ns()
{
    struct timespec ts;
    clock_gettime(CLOCK_REALTIME, &ts);
    return ts.tv_nsec + ts.tv_sec * 1.e9;
}
#endif
