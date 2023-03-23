#ifndef _LIO_H
#define _LIO_H
#define lio_pr(fmt, ...) pr_info("<%s>[%s]{%d}: " fmt "\n", __FILE__, __func__, __LINE__, ##__VA_ARGS__)
#endif