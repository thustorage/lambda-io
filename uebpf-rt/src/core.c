#include <bpf.h>
#include <lio.h>
#include <string.h>
#include <sys/mman.h>

void *malloc_exec(size_t size)
{
	void *addr = mmap(0, size, PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
	if (addr == MAP_FAILED) {
		return NULL;
	}
	return addr;
}

void free_exec(void *addr, size_t size)
{
	munmap(addr, size);
}

/* Base function for offset calculation. Needs to go into .text section,
 * therefore keeping it non-static as well; will also be used by JITs
 * anyway later on, so do not let the compiler omit it. This also needs
 * to go into kallsyms for correlation from e.g. bpftool, so naming
 * must not change.
 */
noinline u64 __bpf_call_base(u64 r1, u64 r2, u64 r3, u64 r4, u64 r5)
{
	return 0;
}

void bpf_prog_free(struct bpf_prog *prog)
{
    free(prog->aux);
    free(prog);
}

// yz
static struct bpf_prog *bpf_prog_realloc(struct bpf_prog *fp_old, unsigned int size)
{
	// gfp_t gfp_flags = GFP_KERNEL | __GFP_ZERO | gfp_extra_flags;
	struct bpf_prog *fp;
	u32 pages, delta;
	int ret;

	size = round_up(size, PAGE_SIZE);
	pages = size / PAGE_SIZE;
	if (pages <= fp_old->pages)
		return fp_old;

	delta = pages - fp_old->pages;
	// ret = __bpf_prog_charge(fp_old->aux->user, delta);
	// if (ret)
	// 	return NULL;

	fp = __vmalloc(size, gfp_flags);
	if (fp == NULL) {
		// __bpf_prog_uncharge(fp_old->aux->user, delta);
	} else {
		memcpy(fp, fp_old, fp_old->pages * PAGE_SIZE);
		fp->pages = pages;
		fp->aux->prog = fp;

		/* We keep fp->aux from fp_old around in the new
		 * reallocated structure.
		 */
		fp_old->aux = NULL;
		bpf_prog_free(fp_old);
	}

	return fp;
}

struct bpf_prog *bpf_prog_alloc(unsigned int size)
{
    struct bpf_prog_aux *aux;
    struct bpf_prog *fp;

    size = round_up(size, PAGE_SIZE);
    fp = calloc(1, size);
    if (fp == NULL) {
        return NULL;
    }

    aux = calloc(1, sizeof(*aux));
    if (aux == NULL) {
        free(fp);
        return NULL;
    }

    fp->pages = size / PAGE_SIZE;
    fp->aux = aux;
    fp->aux->prog = fp;
    fp->jit_requested = 1;

    return fp;
}



static int bpf_adj_delta_to_off(struct bpf_insn *insn, u32 pos, s32 end_old,
				s32 end_new, s32 curr, const bool probe_pass)
{
	const s32 off_min = S16_MIN, off_max = S16_MAX;
	s32 delta = end_new - end_old;
	s32 off = insn->off;

	if (curr < pos && curr + off + 1 >= end_old)
		off += delta;
	else if (curr >= end_new && curr + off + 1 < end_new)
		off -= delta;
	if (off < off_min || off > off_max)
		return -ERANGE;
	if (!probe_pass)
		insn->off = off;
	return 0;
}

static int bpf_adj_delta_to_imm(struct bpf_insn *insn, u32 pos, s32 end_old,
				s32 end_new, s32 curr, const bool probe_pass)
{
	const s64 imm_min = S32_MIN, imm_max = S32_MAX;
	s32 delta = end_new - end_old;
	s64 imm = insn->imm;

	if (curr < pos && curr + imm + 1 >= end_old)
		imm += delta;
	else if (curr >= end_new && curr + imm + 1 < end_new)
		imm -= delta;
	if (imm < imm_min || imm > imm_max)
		return -ERANGE;
	if (!probe_pass)
		insn->imm = imm;
	return 0;
}

static int bpf_adj_branches(struct bpf_prog *prog, u32 pos, s32 end_old,
			    s32 end_new, const bool probe_pass)
{
	u32 i, insn_cnt = prog->len + (probe_pass ? end_new - end_old : 0);
	struct bpf_insn *insn = prog->insnsi;
	int ret = 0;

	for (i = 0; i < insn_cnt; i++, insn++) {
		u8 code;

		/* In the probing pass we still operate on the original,
		 * unpatched image in order to check overflows before we
		 * do any other adjustments. Therefore skip the patchlet.
		 */
		if (probe_pass && i == pos) {
			i = end_new;
			insn = prog->insnsi + end_old;
		}
		code = insn->code;
		if ((BPF_CLASS(code) != BPF_JMP &&
		     BPF_CLASS(code) != BPF_JMP32) ||
		    BPF_OP(code) == BPF_EXIT)
			continue;
		/* Adjust offset of jmps if we cross patch boundaries. */
		if (BPF_OP(code) == BPF_CALL) {
			if (insn->src_reg != BPF_PSEUDO_CALL)
				continue;
			ret = bpf_adj_delta_to_imm(insn, pos, end_old,
						   end_new, i, probe_pass);
		} else {
			ret = bpf_adj_delta_to_off(insn, pos, end_old,
						   end_new, i, probe_pass);
		}
		if (ret)
			break;
	}

	return ret;
}

static void bpf_adj_linfo(struct bpf_prog *prog, u32 off, u32 delta)
{
	struct bpf_line_info *linfo;
	u32 i, nr_linfo;

	nr_linfo = prog->aux->nr_linfo;
	if (!nr_linfo || !delta)
		return;

	linfo = prog->aux->linfo;

	for (i = 0; i < nr_linfo; i++)
		if (off < linfo[i].insn_off)
			break;
	/* Push all off < linfo[i].insn_off by delta */
	for (; i < nr_linfo; i++)
		linfo[i].insn_off += delta;
}

struct bpf_prog *bpf_patch_insn_single(struct bpf_prog *prog, u32 off,
				       const struct bpf_insn *patch, u32 len)
{
	u32 insn_adj_cnt, insn_rest, insn_delta = len - 1;
	const u32 cnt_max = S16_MAX;
	struct bpf_prog *prog_adj;
	int err;

	/* Since our patchlet doesn't expand the image, we're done. */
	if (insn_delta == 0) {
		memcpy(prog->insnsi + off, patch, sizeof(*patch));
		return prog;
	}

	insn_adj_cnt = prog->len + insn_delta;

	/* Reject anything that would potentially let the insn->off
	 * target overflow when we have excessive program expansions.
	 * We need to probe here before we do any reallocation where
	 * we afterwards may not fail anymore.
	 */
	if (insn_adj_cnt > cnt_max &&
	    (err = bpf_adj_branches(prog, off, off + 1, off + len, true)))
		return ERR_PTR(err);

	/* Several new instructions need to be inserted. Make room
	 * for them. Likely, there's no need for a new allocation as
	 * last page could have large enough tailroom.
	 */
	prog_adj = bpf_prog_realloc(prog, bpf_prog_size(insn_adj_cnt));
	if (!prog_adj)
		return ERR_PTR(-ENOMEM);

	prog_adj->len = insn_adj_cnt;

	/* Patching happens in 3 steps:
	 *
	 * 1) Move over tail of insnsi from next instruction onwards,
	 *    so we can patch the single target insn with one or more
	 *    new ones (patching is always from 1 to n insns, n > 0).
	 * 2) Inject new instructions at the target location.
	 * 3) Adjust branch offsets if necessary.
	 */
	insn_rest = insn_adj_cnt - off - len;

	memmove(prog_adj->insnsi + off + len, prog_adj->insnsi + off + 1,
		sizeof(*patch) * insn_rest);
	memcpy(prog_adj->insnsi + off, patch, sizeof(*patch) * len);

	/* We are guaranteed to not fail at this point, otherwise
	 * the ship has sailed to reverse to the original state. An
	 * overflow cannot happen at this point.
	 */
	BUG_ON(bpf_adj_branches(prog_adj, off, off + 1, off + len, false));

	bpf_adj_linfo(prog_adj, off, insn_delta);

	return prog_adj;
}

static unsigned int __bpf_prog_ret0_warn(const void *ctx,
					 const struct bpf_insn *insn)
{
	/* If this handler ever gets executed, then BPF_JIT_ALWAYS_ON
	 * is not working properly, so warn about it!
	 */
	WARN_ON_ONCE(1);
	return 0;
}

static void bpf_prog_select_func(struct bpf_prog *fp)
{
#ifndef CONFIG_BPF_JIT_ALWAYS_ON
	u32 stack_depth = max_t(u32, fp->aux->stack_depth, 1);

	fp->bpf_func = interpreters[(round_up(stack_depth, 32) / 32) - 1];
#else
	fp->bpf_func = __bpf_prog_ret0_warn;
#endif
}

int bpf_prog_alloc_jited_linfo(struct bpf_prog *prog)
{
	if (!prog->aux->nr_linfo || !prog->jit_requested)
		return 0;

	prog->aux->jited_linfo = kcalloc(prog->aux->nr_linfo,
					 sizeof(*prog->aux->jited_linfo),
					 GFP_KERNEL | __GFP_NOWARN);
	if (!prog->aux->jited_linfo)
		return -ENOMEM;

	return 0;
}

void bpf_prog_free_jited_linfo(struct bpf_prog *prog)
{
	kfree(prog->aux->jited_linfo);
	prog->aux->jited_linfo = NULL;
}

void bpf_prog_free_unused_jited_linfo(struct bpf_prog *prog)
{
	if (prog->aux->jited_linfo && !prog->aux->jited_linfo[0])
		bpf_prog_free_jited_linfo(prog);
}

struct bpf_prog *bpf_int_jit_compile(struct bpf_prog *prog);

/**
 *	bpf_prog_select_runtime - select exec runtime for BPF program
 *	@fp: bpf_prog populated with internal BPF program
 *	@err: pointer to error variable
 *
 * Try to JIT eBPF program, if JIT is not available, use interpreter.
 * The BPF program will be executed via BPF_PROG_RUN() macro.
 */
struct bpf_prog *bpf_prog_select_runtime(struct bpf_prog *fp, int *err)
{
	/* In case of BPF to BPF calls, verifier did all the prep
	 * work with regards to JITing, etc.
	 */
	if (fp->bpf_func)
		goto finalize;

	bpf_prog_select_func(fp);

	/* eBPF JITs can rewrite the program in case constant
	 * blinding is active. However, in case of error during
	 * blinding, bpf_int_jit_compile() must always return a
	 * valid program, which in this case would simply not
	 * be JITed, but falls back to the interpreter.
	 */
	if (!bpf_prog_is_dev_bound(fp->aux)) {
		*err = bpf_prog_alloc_jited_linfo(fp);
		lio_pr(info, "err=%d", *err);
		if (*err)
			return fp;

		fp = bpf_int_jit_compile(fp);
		if (!fp->jited) {
			bpf_prog_free_jited_linfo(fp);
#ifdef CONFIG_BPF_JIT_ALWAYS_ON
			*err = -ENOTSUPP;
			lio_pr(info, "err=%d", *err);

			return fp;
#endif
		} else {
			bpf_prog_free_unused_jited_linfo(fp);
		}
	} else {
		assert(0);
		// *err = bpf_prog_offload_compile(fp);
		// if (*err)
		// 	return fp;
	}

finalize:
	// bpf_prog_lock_ro(fp);

	/* The tail call compatibility check can only be done at
	 * this late stage as we need to determine, if we deal
	 * with JITed or non JITed program concatenations and not
	 * all eBPF JITs might immediately support all features.
	 */
	// *err = bpf_check_tail_call(fp);
	// lio_pr(info, "err=%d", *err);

	return fp;
}

/* The jit engine is responsible to provide an array
 * for insn_off to the jited_off mapping (insn_to_jit_off).
 *
 * The idx to this array is the insn_off.  Hence, the insn_off
 * here is relative to the prog itself instead of the main prog.
 * This array has one entry for each xlated bpf insn.
 *
 * jited_off is the byte off to the last byte of the jited insn.
 *
 * Hence, with
 * insn_start:
 *      The first bpf insn off of the prog.  The insn off
 *      here is relative to the main prog.
 *      e.g. if prog is a subprog, insn_start > 0
 * linfo_idx:
 *      The prog's idx to prog->aux->linfo and jited_linfo
 *
 * jited_linfo[linfo_idx] = prog->bpf_func
 *
 * For i > linfo_idx,
 *
 * jited_linfo[i] = prog->bpf_func +
 *	insn_to_jit_off[linfo[i].insn_off - insn_start - 1]
 */
void bpf_prog_fill_jited_linfo(struct bpf_prog *prog,
                               const u32 *insn_to_jit_off)
{
    u32 linfo_idx, insn_start, insn_end, nr_linfo, i;
    const struct bpf_line_info *linfo;
    void **jited_linfo;

    if (!prog->aux->jited_linfo)
        /* Userspace did not provide linfo */
        return;

    linfo_idx = prog->aux->linfo_idx;
    linfo = &prog->aux->linfo[linfo_idx];
    insn_start = linfo[0].insn_off;
    insn_end = insn_start + prog->len;

    jited_linfo = &prog->aux->jited_linfo[linfo_idx];
    jited_linfo[0] = prog->bpf_func;

    nr_linfo = prog->aux->nr_linfo - linfo_idx;

    for (i = 1; i < nr_linfo && linfo[i].insn_off < insn_end; i++)
        /* The verifier ensures that linfo[i].insn_off is
         * strictly increasing
         */
        jited_linfo[i] = prog->bpf_func +
                         insn_to_jit_off[linfo[i].insn_off - insn_start - 1];
}
