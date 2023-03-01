#include <stdio.h>
#include <string.h>
#include <bpf.h>
#include "lio.h"
#include <ctype.h>
#include <uebpf.h>
/* last field in 'union bpf_attr' used by this command */
#define	BPF_PROG_LOAD_LAST_FIELD attach_prog_fd

#define NR_PROGS 10
static struct bpf_prog * progs[NR_PROGS];
static int nr_progs = 0;

static const struct bpf_prog_ops * const bpf_prog_types[] = {
#define BPF_PROG_TYPE(_id, _name, prog_ctx_type, kern_ctx_type) \
	[_id] = & _name ## _prog_ops,
#define BPF_MAP_TYPE(_id, _ops)
#define BPF_LINK_TYPE(_id, _name)
#include <bpf_types.h>
#undef BPF_PROG_TYPE
#undef BPF_MAP_TYPE
#undef BPF_LINK_TYPE
};

static int find_prog_type(enum bpf_prog_type type, struct bpf_prog *prog)
{
	const struct bpf_prog_ops *ops;

	if (type >= ARRAY_SIZE(bpf_prog_types))
		return -EINVAL;
	// type = array_index_nospec(type, ARRAY_SIZE(bpf_prog_types));
	ops = bpf_prog_types[type];
	if (!ops)
		return -EINVAL;

	// if (!bpf_prog_is_dev_bound(prog->aux))
	prog->aux->ops = ops;
	// else
		// prog->aux->ops = &bpf_offload_prog_ops;
	prog->type = type;
	return 0;
}

/* dst and src must have at least "size" number of bytes.
 * Return strlen on success and < 0 on error.
 */
int bpf_obj_name_cpy(char *dst, const char *src, unsigned int size)
{
	const char *end = src + size;
	const char *orig_src = src;

	memset(dst, 0, size);
	/* Copy all isalnum(), '_' and '.' chars. */
	while (src < end && *src) {
		if (!isalnum(*src) &&
		    *src != '_' && *src != '.')
			return -EINVAL;
		*dst++ = *src++;
	}

	/* No '\0' found in "size" number of bytes */
	if (src == end)
		return -EINVAL;

	return src - orig_src;
}

static int bpf_prog_load(union bpf_attr *attr, union bpf_attr *uattr)
{
	enum bpf_prog_type type = attr->prog_type;
	struct bpf_prog *prog;
	int err;

	lio_pr(info, "prog_name=%s, prog_type=%u", attr->prog_name, attr->prog_type);

	/* plain bpf_prog allocation */
	prog = bpf_prog_alloc(bpf_prog_size(attr->insn_cnt));
	if (!prog) {
		lio_pr(info, "prog==NULL");
		return -ENOMEM;
	}

	// prog->expected_attach_type = attr->expected_attach_type;
	// prog->aux->attach_btf_id = attr->attach_btf_id;
	// if (attr->attach_prog_fd) {
	// 	struct bpf_prog *dst_prog;

	// 	dst_prog = bpf_prog_get(attr->attach_prog_fd);
	// 	if (IS_ERR(dst_prog)) {
	// 		err = PTR_ERR(dst_prog);
	// 		goto free_prog_nouncharge;
	// 	}
	// 	prog->aux->dst_prog = dst_prog;
	// }

	// prog->aux->offload_requested = !!attr->prog_ifindex;
	// prog->aux->sleepable = attr->prog_flags & BPF_F_SLEEPABLE;

	// err = security_bpf_prog_alloc(prog->aux);
	// if (err)
	// 	goto free_prog_nouncharge;

	// err = bpf_prog_charge_memlock(prog);
	// if (err)
	// 	goto free_prog_sec;

	prog->len = attr->insn_cnt;

	// err = -EFAULT;
	lio_pr(info, "");
	memcpy(prog->insnsi, (void *)(attr->insns),
			   bpf_prog_insn_size(prog));

	lio_pr(info, "");

	prog->orig_prog = NULL;
	prog->jited = 0;
	lio_pr(info, "");

	// atomic64_set(&prog->aux->refcnt, 1);
	prog->gpl_compatible = 1;
	lio_pr(info, "");

	// if (bpf_prog_is_dev_bound(prog->aux)) {
	// 	err = bpf_prog_offload_init(prog, attr);
	// 	if (err)
	// 		goto free_prog;
	// }
	lio_pr(info, "");

	/* find program type: socket_filter vs tracing_filter */
	err = find_prog_type(type, prog);
	if (err < 0)
		goto free_prog;
	lio_pr(info, "");

	// prog->aux->load_time = ktime_get_boottime_ns();
	err = bpf_obj_name_cpy(prog->aux->name, attr->prog_name,
			       sizeof(attr->prog_name));
	if (err < 0)
		goto free_prog;

	lio_pr(info, "prog->len=%d", prog->len);
	/* run eBPF verifier */
	err = bpf_check(&prog, attr, uattr);
	lio_pr(info, "prog->len=%d, err=%d", prog->len, err);
	if (err < 0)
		goto free_used_maps;

	prog = bpf_prog_select_runtime(prog, &err);
	lio_pr(info, "prog->len=%d, err=%d", prog->len, err);
	if (err < 0)
		goto free_used_maps;

	// err = bpf_prog_alloc_id(prog);
	// lio_pr(info, "err=%d", err);
	// if (err)
	// 	goto free_used_maps;

	/* Upon success of bpf_prog_alloc_id(), the BPF prog is
	 * effectively publicly exposed. However, retrieving via
	 * bpf_prog_get_fd_by_id() will take another reference,
	 * therefore it cannot be gone underneath us.
	 *
	 * Only for the time /after/ successful bpf_prog_new_fd()
	 * and before returning to userspace, we might just hold
	 * one reference and any parallel close on that fd could
	 * rip everything out. Hence, below notifications must
	 * happen before bpf_prog_new_fd().
	 *
	 * Also, any failure handling from this point onwards must
	 * be using bpf_prog_put() given the program is exposed.
	 */
	// bpf_prog_kallsyms_add(prog);
	// perf_event_bpf_event(prog, PERF_BPF_EVENT_PROG_LOAD, 0);
	// bpf_audit_prog(prog, BPF_AUDIT_LOAD);

	// err = bpf_prog_new_fd(prog);
	// lio_pr(info, "err=%d", err);
	// if (err < 0)
	// 	bpf_prog_put(prog);

    progs[nr_progs++] = prog;
	return nr_progs - 1;

free_used_maps:
	/* In case we have subprogs, we need to wait for a grace
	 * period before we can tear down JIT memory since symbols
	 * are already exposed under kallsyms.
	 */
// 	__bpf_prog_put_noref(prog, prog->aux->func_cnt);
// 	return err;
free_prog:
// 	bpf_prog_uncharge_memlock(prog);
// free_prog_sec:
// 	security_bpf_prog_free(prog->aux);
// free_prog_nouncharge:
// 	bpf_prog_free(prog);
	return -1;
}

int uebpf_rt_load(union bpf_attr *uattr, unsigned int size)
{	
	union bpf_attr attr;
	memcpy(&attr, uattr, size);

	return bpf_prog_load(&attr, uattr);
}

int uebpf_rt_run(int prog_id, void *ctx)
{
	assert(prog_id >= 0 &&
        prog_id < nr_progs);
    assert(ctx);
    struct bpf_prog *prog = progs[prog_id];
    return prog->bpf_func(ctx, prog->insnsi);
}

#ifdef ARCH_AARCH64
void uebpf_rt_set_back_jump_check(int enable)
{
    extern int enable_back_jump_check;
    enable_back_jump_check = enable;
}
#endif
