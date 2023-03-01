#ifndef DEBUG_H_
#define DEBUG_H_
#include <stdio.h>
//#define ENABLE_DEBUG
#ifdef ENABLE_DEBUG
#define pr_debug(fmt, ...) printf("[%s]<%d>" fmt "\n", __func__, __LINE__, ##__VA_ARGS__)
#else
#define pr_debug(...)
#endif

//#define ENABLE_EVAL
#ifdef ENABLE_EVAL
#define pr_eval(fmt, ...) printf("[%s]<%d>" fmt "\n", __func__, __LINE__, ##__VA_ARGS__)
#else
#define pr_eval(...)
#endif
#endif
