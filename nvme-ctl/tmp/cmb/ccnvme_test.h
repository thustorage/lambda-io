#include <linux/sched.h>
#include <linux/kthread.h>
#include <linux/timer.h>
#include <../ccnvme/horae.h>

#define GB (1024 * MB)
#define TEST_SET_SIZE 1 * GB

struct test_context {
    volatile int should_stop;
    struct timer_list stop_timer;
    struct thread_param *t_param;
};

struct thread_param {
    struct task_struct* ts;
    uint sid;
    int tid;
    u64 count;
    struct page** pages;
    u64 nr_pages;
};

int raid0_test_classic(void *);
int raid0_test_olayer(void *);
int raid0_test_iodispatch(void *);
int test_olayer_jflush(void *);
int test_olayer_recovery(void *);
int test_cmb_write(void *);
int test_ccnvme_tx_perf(void *);
int test_ccnvme_tx_sync_perf(void *);
int test_classic_tx_perf(void *);