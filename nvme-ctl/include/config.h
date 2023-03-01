#ifndef CONFIG_H_
#define CONFIG_H_
#ifdef __cplusplus
extern "C" {
#endif
#define LOGICAL_BLOCK_BYTES     (4096ul)
#define TOTAL_CAPACITY_BYTES    (64ul << 30)
#define TOTAL_CAPACITY_BLOCKS   (TOTAL_CAPACITY_BYTES / LOGICAL_BLOCK_BYTES)
#define MAX_DATA_TRANSFER_SIZE_BITS 9ul // (512) * 4KB // 2 MB
#define MAX_DATA_TRANSFER_BYTES ((1ul << MAX_DATA_TRANSFER_SIZE_BITS) * LOGICAL_BLOCK_BYTES)

#define DAISY_P8C1 0
#define DAISY_P8C2 1
#define PLUS_P8C2 2
#define BITSTREAM_VERSION DAISY_P8C2

#define NR_THREADS 4

#if BITSTREAM_VERSION == DAISY_P8C1
#define NR_CDMA_DEVS 1
#define BITSTREAM_NAME "daisy_p8c1"
#elif BITSTREAM_VERSION == DAISY_P8C2
#define NR_CDMA_DEVS 2
#define BITSTREAM_NAME "daisy_p8c2"
#elif BITSTREAM_VERSION == PLUS_P8C2
#define NR_CDMA_DEVS 2
#define BITSTREAM_NAME "plus_p8c2"
#else
#error "Unknown BITSTREAM_VERSION"
#endif


#ifdef __cplusplus
}
#endif
#endif