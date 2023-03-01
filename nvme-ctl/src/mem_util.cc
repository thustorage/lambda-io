/**
 * OpenExpress - Fully Hardware Automated Open Research Framework for Future
 *               Fast NVMe Devices
 *
 * Copyright (c) 2020 CAMELab.org. All rights reserved.
 *
 * OpenExpress License 0.1.
 *
 * OpenExpress is provided for 鈥渁cademic research鈥� and 鈥渘on-commercial鈥�
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

#include "fw_common.h"

void memset32(UINT32* dest, UINT32 value32, UINT32 num_bytes)
{
	assert((num_bytes % sizeof(UINT32)) == 0);
	assert((((UINT64)dest) % sizeof(UINT32)) == 0);

	UINT32 count = num_bytes / sizeof(UINT32);

	while (1)
	{
		*dest = value32;

		count--;
		if (count == 0)
		{
			break;
		}

		dest++;
	}
}

void memcpy32(UINT32* dest, UINT32* src, UINT32 num_bytes)
{
	assert((num_bytes % sizeof(UINT32)) == 0);
	assert((((UINT64)dest) % sizeof(UINT32)) == 0);
	assert((((UINT64)src) % sizeof(UINT32)) == 0);

	UINT32 count = num_bytes / sizeof(UINT32);

	while (1)
	{
		UINT32 value32 = *src;
		*dest = value32;

		count--;
		if (count == 0)
		{
			break;
		}

		dest++;
		src++;
	}
}

void memset16(uint16_t * dest, uint16_t value16, uint32_t num_bytes)
{
    assert((num_bytes % sizeof(uint16_t)) == 0);
    assert((((UINT64)dest) % sizeof(uint16_t)) == 0);

    UINT32 count = num_bytes / sizeof(uint16_t);

    while (1)
    {
        *dest = value16;

        count--;
        if (count == 0)
        {
            break;
        }

        dest++;
    }
}


/*
 *            | DMA_BIDIRECTIONAL | DMA_TO_DEVICE | DMA_FROM_DEVICE
 * for_cpu    | inval             | nop           | inval
 * for_device |                   | clean         |
 *
 * */
void dma_sync_for_cpu(void *addr, size_t size, enum dma_data_direction dir)
{
    if (dir != DMA_TO_DEVICE) {
        dc_inval(addr, size);
    }
}

void dma_sync_for_device(void *addr, size_t size, enum dma_data_direction dir)
{
    if (dir == DMA_FROM_DEVICE) {
        dc_inval(addr, size);
    } else {
        dc_clean(addr, size);
    }
}

int proc_dc_inval(int i, uint64_t ofst, size_t size)
{
    char str[128];

    sprintf(str, "echo \"i %d 0x%lx 0x%lx\" > /proc/phys-mmap-helper" , i, ofst, size);
    return system(str);
}

int proc_dc_clean(int i, uint64_t ofst, size_t size)
{
    char str[128];

    sprintf(str, "echo \"c %d 0x%lx 0x%lx\" > /proc/phys-mmap-helper" , i, ofst, size);
    return system(str);
}

int proc_dc_clean_and_inval(int i, uint64_t ofst, size_t size)
{
    char str[128];

    sprintf(str, "echo \"x %d 0x%lx 0x%lx\" > /proc/phys-mmap-helper" , i, ofst, size);
    return system(str);
}
