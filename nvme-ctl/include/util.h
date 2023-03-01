#ifndef UTIL_H_
#define UTIL_H_
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define handle_error(msg) \
    do { perror(msg); exit(EXIT_FAILURE); } while (0)

#define pr_msg(fmt, args...) \
    printf("[%s]{%d}: " fmt "\n", __func__, __LINE__, ##args)


static inline int64_t wall_time_ns()
{
    struct timespec ts;
    clock_gettime(CLOCK_REALTIME, &ts);
    return ts.tv_nsec + ts.tv_sec * 1.e9;
}
#endif