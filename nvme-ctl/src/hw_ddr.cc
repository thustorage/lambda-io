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
#include "hw_cdma.hh"
#include "hw_ddr.h"
#include <time.h>

double wall_time_ns()
{
    struct timespec ts;
    clock_gettime(CLOCK_REALTIME, &ts);
    return ts.tv_nsec + ts.tv_sec * 1.e9;
}

void ddr_init(void)
{
	printf("Waiting... Writing pattern to avoid DDR ECC error\n");

	const UINT32 btt = 128 << 10;
//	pr_debug("");
//	MEM_SET32(map_sram_base_addr, 0, btt);
    pr_debug("");
    MEM_SET32(dram_base_addr.virt, 0, btt);
    pr_debug("");
    dc_clean(dram_base_addr.virt, btt);
    pr_debug("");

    double ts_b, ts_e;

//    axi_cdma_simple_xfer(SRAM_BASE_ADDR, DRAM_BASE_ADDR, btt);
//	printf("DDR0...\n");
//    axi_cdma_simple_xfer(DRAM_BASE_ADDR, SRAM_BASE_ADDR, btt);

    printf("Init DDR...\n");
	ts_b = wall_time_ns();
	for (UINT64 dest = 0; dest < DDR_SIZE_BYTES; dest += btt)
	{
        if (dest % SZ_1G == 0) {
            printf("\r%luGB", dest / SZ_1G);
            fflush(stdout);
        }
        cdma_by_id(0)->call_simple(dest + DDR_BASE_ADDR, dram_base_addr.phys, btt);
	}
    ts_e = wall_time_ns();
    printf("\nbandwidth=%.2lfMB/s\n", (DDR_SIZE_BYTES >> 20) * 1.e9 / (ts_e - ts_b));

    printf("done\n");
}

