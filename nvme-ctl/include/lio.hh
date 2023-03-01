/* glue code for lambda-io */
#ifndef _LIO_HH_
#define _LIO_HH_
#include <string>
int lio_init();
int lio_call(int kern_id, void *buf_o, void *buf_i, size_t size_i);
#endif
