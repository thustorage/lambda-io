#ifndef _UEBPF_UTIL_H_
#define _UEBPF_UTIL_H_
#include <time.h>
#include <stdint.h>

static inline uint64_t wall_time_ns()
{
    struct timespec ts;
    clock_gettime(CLOCK_REALTIME, &ts);
    return ts.tv_nsec + ts.tv_sec * 1.e9;
}
#endif
