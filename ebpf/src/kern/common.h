#include "bpf_helpers.h"

#define __stringify_1(x...)	#x
#define __stringify(x...)	__stringify_1(x)
#define SEC(NAME) __attribute__((section(NAME), used))
#define LIO_PROG(name) SEC("lambda_io/"__stringify(name)) name

#define min(x, y) ((x) < (y) ? (x) : (y))
#define max(x, y) ((x) > (y) ? (x) : (y))

#define likely(x)      __builtin_expect(!!(x), 1)
#define unlikely(x)    __builtin_expect(!!(x), 0)

#define MEM_CHECK 1
#if MEM_CHECK
#define deref_check(deref_type, base_ptr, boundary, offset) \
    (*(deref_type*)((char *)(base_ptr) + (unlikely((offset) > (boundary)) ? 0 : (offset))))
//    *(deref_type*)((char *)(base_ptr) + ((offset) % (boundary)))
#else
#define deref_check(deref_type, base_ptr, boundary, offset) \
    (*(deref_type*)((char *)(base_ptr) + (offset)))
#endif

#define ibuf_deref_check(deref_type, offset) deref_check(deref_type, buf_i, size_i, offset)
#define obuf_deref_check(deref_type, offset) deref_check(deref_type, buf_o, size_i, offset)
#define deref_copy(d, s, type) (obuf_deref_check(type, d) = ibuf_deref_check(type, s))
#define deref_copy_2(d, s) deref_copy(d, s, uint16_t)
#define deref_copy_4(d, s) deref_copy(d, s, uint32_t)
#define deref_copy_6(d, s) ({deref_copy(d, s, uint32_t); deref_copy(d + 4, s + 4, uint16_t); })
#define deref_copy_8(d, s) deref_copy(d, s, uint64_t)

#define BACK_CHECK 1
#if BACK_CHECK && defined(x86_64)
#warning "enable back check in code"
#define for_check(init, boundary, iter) \
    for (init; (boundary) && likely((back_cnt >> 24) == 0); back_cnt++, iter)
#define while_check(cond) \
    for (; (cond) && ((back_cnt >> 24) == 0); back_cnt++)
#else
#warning "disable back check in code"
#define for_check(init, boundary, iter) for(init; boundary; iter)
#define while_check(cond) while(cond)
#endif

struct context {
    void *buf_o;
    void *buf_i;
    size_t size_i;
};

#define memcpy bpf_memcpy
#define memcmp bpf_memcmp
#define memset bpf_memset
