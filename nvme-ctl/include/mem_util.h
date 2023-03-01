/**
 * OpenExpress - Fully Hardware Automated Open Research Framework for Future
 *               Fast NVMe Devices
 *
 * Copyright (c) 2020 CAMELab.org. All rights reserved.
 *
 * OpenExpress License 0.1.
 *
 * OpenExpress is provided for “academic research” and “non-commercial”
 * purposes. Here, OpenExpress means the hardware source code, documents, etc.
 * that you can download from a link given by https://openexpress.camelab.org.
 * One of the main purposes of sharing OpenExpress's hardware IP cores is to be
 * an educational reference point for academic researchers, and the author
 * doesn't want to implicitly and/or explicitly have an impact on industry
 * business and complicated situation behind them.
 *
 * The author thus does allow downloading OpenExpress "only" from the designated
 *  website, and permit to examine and do any activities on OpenExpress (such as
 *  use/modify) for "only the one" who is successfully verified and agrees on
 * this End User License Agreement. OpenExpress is protected by one or more
 * patents. Note that all use cases of OpenExpress without registration at
 *  https://openexpress.camelab.org will be in violation of the law.
 *
 * The academic users (permitted) to download OpenExpress require understanding
 * that any form of non-permitted distribution, including a variation and
 * reproduction of the original OpenExpress version (you downloaded), is not
 * allowed. If a user left a university program, any local copy of OpenExpress
 * should be removed. OpenExpress is provided as is without warranty of any
 * kind, express, or implied.  In no event shall the author be liable for any
 * claim, damages or other liability whether in an action of contract, tort or
 * other liability, otherwise, arising from, out of or in connection with
 * OpenExpress or the use or other dealings with OpenExpress.
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of OpenExpress.
 */


#ifndef __MEM_UTIL_H__
#define __MEM_UTIL_H__
#include <stdint.h>
#include <stdlib.h>
#include <basic.h>
#include <assert.h>
#ifdef __cplusplus
extern "C" {
#endif

#define MEM_READ8(ADDRESS)                            (*(volatile UINT8*)(ADDRESS))
#define MEM_WRITE8(ADDRESS, VALUE)                    *(volatile UINT8*)(ADDRESS) = (VALUE)

#define MEM_READ16(ADDRESS)                            (*(volatile UINT16*)(ADDRESS))
#define MEM_WRITE16(ADDRESS, VALUE)                    *(volatile UINT16*)(ADDRESS) = (VALUE)

//#define MEM_READ32(ADDRESS)							(*(volatile UINT32*)(ADDRESS))
static inline uint32_t MEM_READ32(void *addr) {
    return *(volatile uint32_t *) addr;
}

static inline uint64_t MEM_READ64(void *addr) {
    return *(volatile uint64_t *)addr;
}

static inline void MEM_WRITE32(void *addr, uint32_t value) {
    *(volatile uint32_t *) addr = value;
}

static inline void mem_write64(void *addr, uint64_t value) {
    *(volatile uint64_t *)addr = value;
}
//#define MEM_WRITE32(ADDRESS, VALUE)					*(volatile UINT32*)(ADDRESS) = (VALUE)

#define MEM_SET_BIT_ARRAY32(BITMAP, OFFSET)            *(((UINT32*)(BITMAP) + ((OFFSET) / 32))) |= (0x1UL << ((OFFSET) % 32))
#define MEM_SET_BIT32(BITMAP, OFFSET)                (BITMAP) |= (0x1UL << (OFFSET))
#define MEM_CLR_BIT_ARRAY32(BITMAP, OFFSET)            *(((UINT32*)(BITMAP) + ((OFFSET) / 32))) &= (~(0x1UL << ((OFFSET) % 32)))
#define MEM_CLR_BIT32(BITMAP, OFFSET)                (BITMAP) &= (~(0x1UL << (OFFSET)))
#define MEM_TEST_BIT_ARRAY32(BITMAP, OFFSET)        ((BOOL32)((*(((UINT32*)(BITMAP)) + ((OFFSET) / 32)) & (0x1UL << ((OFFSET) % 32))) != 0))
#define MEM_TEST_BIT32(BITMAP, OFFSET)                ((BOOL32)(((BITMAP) & (0x1UL << (OFFSET))) != 0))

#define MEM_SET_BMP32(BITMAP, MASK)                    (BITMAP) |= (MASK)
#define MEM_CLR_BMP32(BITMAP, MASK)                    (BITMAP) &= (~MASK)
#define MEM_TEST_BMP32(BITMAP, MASK)                ((BOOL32)(((BITMAP) & (MASK)) == (MASK)))
#define MEM_MASK_BMP32(BITMAP, MASK)                (BITMAP) &= (MASK)

#define MEM_MIN(X, Y)                                (((X) < (Y)) ? (X) : (Y))
#define MEM_MAX(X, Y)                                (((X) > (Y)) ? (X) : (Y))


#define MEM_SET(DEST_ADDR, VALUE8, NUM_BYTES)        memset((void*)(DEST_ADDR), (VALUE8), (NUM_BYTES))
#define MEM_COPY(DEST_ADDR, SRC_ADDR, NUM_BYTES)    memcpy((void*)(DEST_ADDR), (void*)(SRC_ADDR), (NUM_BYTES))

#define MEM_SET32(DEST_ADDR, VALUE32, NUM_BYTES)    memset32((UINT32 *)(DEST_ADDR), (VALUE32), (NUM_BYTES))
#define MEM_COPY32(DEST_ADDR, SRC_ADDR, NUM_BYTES)    memcpy32((UINT32 *)(DEST_ADDR), (UINT32 *)(SRC_ADDR), (NUM_BYTES))
#define CACHELINE_SIZE 64

#define barrier()   asm volatile ("" : : : "memory")
#define dsb(opt)    asm volatile("dsb " #opt : : : "memory")
#define mb()        dsb(sy)
#define rmb()        dsb(ld)
#define wmb()        dsb(st)

enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3,
};

static inline void dccivac(uint64_t civac)
{
    __asm__ __volatile__("dc civac, %0\n\t" : : "r" (civac) :"memory");
}

static inline void dccvac(uint64_t cvac)
{
    __asm__ __volatile__("dc cvac, %0\n\t" : : "r" (cvac) :"memory");
}

static inline void dcivac(uint64_t ivac)
{
    __asm__ __volatile__("dc ivac, %0\n\t" : : "r" (ivac) :"memory");
}

static inline void __dc_clean(uint64_t start, size_t size)
{
    assert(start % CACHELINE_SIZE == 0 && size % CACHELINE_SIZE == 0);
    for (uint64_t off = 0; off < size; off += CACHELINE_SIZE) {
        dccvac(start + off);
    }
    mb();
}

static inline void dc_clean(void *start, size_t size)
{
    uint64_t start_va = round_down((uint64_t)start, CACHELINE_SIZE);
    uint64_t end_va = round_up((uint64_t)start + size, CACHELINE_SIZE);
    __dc_clean(start_va, end_va - start_va);
}

static inline void dc_inval(void *start, size_t size)
{
    uint64_t start_va = (uint64_t)start;
    assert(start_va % CACHELINE_SIZE == 0 && size % CACHELINE_SIZE == 0);
    for (uint64_t off = 0; off < size; off += CACHELINE_SIZE) {
        dcivac(start_va + off);
    }
    mb();
}

static inline void __dc_clean_and_inval(uint64_t start, size_t size)
{
    assert(start % CACHELINE_SIZE == 0 && size % CACHELINE_SIZE == 0);
    for (uint64_t off = 0; off < size; off += CACHELINE_SIZE) {
        dccivac(start + off);
    }
    mb();
}

static inline void dc_clean_and_inval(void *start, size_t size)
{
    uint64_t start_va = round_down((uint64_t)start, CACHELINE_SIZE);
    uint64_t end_va = round_up((uint64_t)start + size, CACHELINE_SIZE);
    __dc_clean_and_inval(start_va, end_va - start_va);
}

static __inline UINT32
MEM_MOD32(UINT32 value, UINT32 mod) {
    value = value + 1;
    if (value < mod) {
        return value;
    } else {
        return 0;
    }
}

// find first set bit in the bitmap from LSB, return value is offset from LSB
static __inline UINT32
MEM_SCAN_SET_LSB32(UINT32 bitmap) {
    assert(bitmap != 0x0);

#if (0)
    {
        UINT32 offset = _bit_scan_forward(bitmap);	// offset is from LSB

        return offset;
    }
#else
    {
        UINT32 offset = 0;    // offset is from LSB

        while (1) {
            UINT32 bitmap_mask = (0x1UL << offset);

            if ((bitmap & bitmap_mask) != 0) {
                break;
            }

            offset++;
        }

        return offset;
    }
#endif
}

void memset32(UINT32 *dest, UINT32 value32, UINT32 num_bytes);
void memcpy32(UINT32 *dest, UINT32 *src, UINT32 num_bytes);
void memset16(uint16_t *dst, uint16_t value16, uint32_t num_bytes);

void dma_sync_for_cpu(void *addr, size_t size, enum dma_data_direction dir);
void dma_sync_for_device(void *addr, size_t size, enum dma_data_direction dir);

int proc_dc_inval(int i, uint64_t ofst, size_t size);
int proc_dc_clean(int i, uint64_t ofst, size_t size);
int proc_dc_clean_and_inval(int i, uint64_t ofst, size_t size);
#ifdef __cplusplus
}
#endif

#endif 	//__MEM_UTIL_H__

