#include <stdio.h>
#define lio_pr(type, fmt, ...) //printf("lio<%s>[%s]{%d}: " fmt "\n", __FILE__, __func__, __LINE__, ##__VA_ARGS__)

#define lio_prog_pr(type, fmt, prog, ...) \
	lio_pr("lio(%s)<%s>[%s]{%d}: " fmt "\n", (prog), __FILE__, __func__, __LINE__, ##__VA_ARGS__)

#define pr_err(fmt, ...) lio_pr(err, fmt, ##__VA_ARGS__)

#define env_prog_name(env) ((env)->prog->aux->name)


