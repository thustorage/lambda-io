#include <bpf.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>

static void bpf_trace_copy_string(char *buf, void *unsafe_ptr, char fmt_ptype,
		size_t bufsz)
{
    strncpy(buf, unsafe_ptr, bufsz);
// 	void *user_ptr = (void *)unsafe_ptr;

// 	buf[0] = 0;

// 	switch (fmt_ptype) {
// 	case 's':
// #ifdef CONFIG_ARCH_HAS_NON_OVERLAPPING_ADDRESS_SPACE
// 		if ((unsigned long)unsafe_ptr < TASK_SIZE) {
// 			strncpy_from_user_nofault(buf, user_ptr, bufsz);
// 			break;
// 		}
// 		fallthrough;
// #endif
// 	case 'k':
// 		strncpy_from_kernel_nofault(buf, unsafe_ptr, bufsz);
// 		break;
// 	case 'u':
// 		strncpy_from_user_nofault(buf, user_ptr, bufsz);
// 		break;
	// }
}

/*
 * Only limited trace_printk() conversion specifiers allowed:
 * %d %i %u %x %ld %li %lu %lx %lld %lli %llu %llx %p %pB %pks %pus %s
 */
BPF_CALL_5(bpf_trace_printk, char *, fmt, u32, fmt_size, u64, arg1,
	   u64, arg2, u64, arg3)
{
	int i, mod[3] = {}, fmt_cnt = 0;
	char buf[64], fmt_ptype;
	void *unsafe_ptr = NULL;
	bool str_seen = false;

	/*
	 * bpf_check()->check_func_arg()->check_stack_boundary()
	 * guarantees that fmt points to bpf program stack,
	 * fmt_size bytes of it were initialized and fmt_size > 0
	 */
	if (fmt[--fmt_size] != 0)
		return -EINVAL;

	/* check format string for allowed specifiers */
	for (i = 0; i < fmt_size; i++) {
		if ((!isprint(fmt[i]) && !isspace(fmt[i])) || !isascii(fmt[i]))
			return -EINVAL;

		if (fmt[i] != '%')
			continue;

		if (fmt_cnt >= 3)
			return -EINVAL;

		/* fmt[i] != 0 && fmt[last] == 0, so we can access fmt[i + 1] */
		i++;
		if (fmt[i] == 'l') {
			mod[fmt_cnt]++;
			i++;
		} else if (fmt[i] == 'p') {
			mod[fmt_cnt]++;
			if ((fmt[i + 1] == 'k' ||
			     fmt[i + 1] == 'u') &&
			    fmt[i + 2] == 's') {
				fmt_ptype = fmt[i + 1];
				i += 2;
				goto fmt_str;
			}

			if (fmt[i + 1] == 'B') {
				i++;
				goto fmt_next;
			}

			/* disallow any further format extensions */
			if (fmt[i + 1] != 0 &&
			    !isspace(fmt[i + 1]) &&
			    !ispunct(fmt[i + 1]))
				return -EINVAL;

			goto fmt_next;
		} else if (fmt[i] == 's') {
			mod[fmt_cnt]++;
			fmt_ptype = fmt[i];
fmt_str:
			if (str_seen)
				/* allow only one '%s' per fmt string */
				return -EINVAL;
			str_seen = true;

			if (fmt[i + 1] != 0 &&
			    !isspace(fmt[i + 1]) &&
			    !ispunct(fmt[i + 1]))
				return -EINVAL;

			switch (fmt_cnt) {
			case 0:
				unsafe_ptr = (void *)(long)arg1;
				arg1 = (long)buf;
				break;
			case 1:
				unsafe_ptr = (void *)(long)arg2;
				arg2 = (long)buf;
				break;
			case 2:
				unsafe_ptr = (void *)(long)arg3;
				arg3 = (long)buf;
				break;
			}

			bpf_trace_copy_string(buf, unsafe_ptr, fmt_ptype,
					sizeof(buf));
			goto fmt_next;
		}

		if (fmt[i] == 'l') {
			mod[fmt_cnt]++;
			i++;
		}

		if (fmt[i] != 'i' && fmt[i] != 'd' &&
		    fmt[i] != 'u' && fmt[i] != 'x')
			return -EINVAL;
fmt_next:
		fmt_cnt++;
	}

/* Horrid workaround for getting va_list handling working with different
 * argument type combinations generically for 32 and 64 bit archs.
 */
#define __BPF_TP_EMIT()	__BPF_ARG3_TP()
#define __BPF_TP(...)							\
	printf(fmt, ##__VA_ARGS__)

#define __BPF_ARG1_TP(...)						\
	((mod[0] == 2 || (mod[0] == 1 && __BITS_PER_LONG == 64))	\
	  ? __BPF_TP(arg1, ##__VA_ARGS__)				\
	  : ((mod[0] == 1 || (mod[0] == 0 && __BITS_PER_LONG == 32))	\
	      ? __BPF_TP((long)arg1, ##__VA_ARGS__)			\
	      : __BPF_TP((u32)arg1, ##__VA_ARGS__)))

#define __BPF_ARG2_TP(...)						\
	((mod[1] == 2 || (mod[1] == 1 && __BITS_PER_LONG == 64))	\
	  ? __BPF_ARG1_TP(arg2, ##__VA_ARGS__)				\
	  : ((mod[1] == 1 || (mod[1] == 0 && __BITS_PER_LONG == 32))	\
	      ? __BPF_ARG1_TP((long)arg2, ##__VA_ARGS__)		\
	      : __BPF_ARG1_TP((u32)arg2, ##__VA_ARGS__)))

#define __BPF_ARG3_TP(...)						\
	((mod[2] == 2 || (mod[2] == 1 && __BITS_PER_LONG == 64))	\
	  ? __BPF_ARG2_TP(arg3, ##__VA_ARGS__)				\
	  : ((mod[2] == 1 || (mod[2] == 0 && __BITS_PER_LONG == 32))	\
	      ? __BPF_ARG2_TP((long)arg3, ##__VA_ARGS__)		\
	      : __BPF_ARG2_TP((u32)arg3, ##__VA_ARGS__)))

	return __BPF_TP_EMIT();
}

const struct bpf_func_proto bpf_trace_printk_proto = {
	.func		= bpf_trace_printk,
	.gpl_only	= true,
	.ret_type	= RET_INTEGER,
	.arg1_type	= ARG_PTR_TO_MEM,
	.arg2_type	= ARG_CONST_SIZE,
};