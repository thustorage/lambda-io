#ifndef _UEBPF_HEADER_
#define _UEBPF_HEADER_
#ifdef __cplusplus
extern "C" {
#endif
int uebpf_rt_load(union bpf_attr *uattr, unsigned int size);
int uebpf_rt_run(int prog_id, void *ctx);
#ifdef ARCH_AARCH64
void uebpf_rt_set_back_jump_check(int v);
#endif
#ifdef __cplusplus
}
#endif
#endif
