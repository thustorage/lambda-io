#ifdef __cplusplus
extern "C" {
#endif
int kebpf_load_file(const char *path);
void kebpf_read_trace_pipe(void);
int uebpf_load_file(const char *path);
int uebpf_run(int prog_id, void *ctx);
#ifdef __cplusplus
};
#endif
