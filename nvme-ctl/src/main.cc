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
#include "nvme_struct.h"
#include "nvme_controller.h"

#include "hw_ctx.h"
#include "hw_fet.h"
#include "hw_cmt.h"
#include "hw_cdma.hh"
#include "hw_ddr.h"
#include "hw_stream.h"
#include "nvme_admin_cmds.h"
#include "nvme_nvm_cmds.h"
#include <lio.hh>
#include <thread>

enum NvmeState
{
    NVME_STATE_MAIN_DISABLED,
    NVME_STATE_MAIN_RUNNING
};

void run_nvme(int tid, bool direct_io)
{
    nvme_sq_entry_t sqe;

//    cpu_set_t cpuset;
//    CPU_ZERO(&cpuset);
//    CPU_SET(tid, &cpuset);
//    int rc = pthread_setaffinity_np(pthread_self(), sizeof(cpu_set_t), &cpuset);
//    if (rc) {
//        fprintf(stderr, "tid=%d, cannot bind core.\n", tid);
//    } else {
//        printf("tid=%d, bind to %d.\n", tid, tid);
//    }

    while (true) {
        if (fetch_sq_entry(&sqe)) {
            command_context_header_t cmd_header;
            cmd_header.dw[0] = sqe.dw[2];
            cmd_header.dw[1] = sqe.dw[3];

            if (cmd_header.SQ_ID == 0) {
                process_admin_cmd(&sqe, tid);
            } else {
                process_nvm_cmd(&sqe, tid, direct_io);
            }
        } else if (check_cc_en() == false) {
            break;
        }
    }
}

int main(int argc, char *argv[])
{
    std::thread threads[NR_THREADS];
    NvmeState state = NVME_STATE_MAIN_DISABLED;
    int nr_cdma_devs;
    bool direct_io;

    if (argc != 3) {
        printf("%s <direct_io> <nr_cdma_devs>\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    printf("BITSTREAM_NAME: " BITSTREAM_NAME "\n");
    direct_io = atoi(argv[1]);
    nr_cdma_devs = atoi(argv[2]);

    printf("direct_io=%d, nr_cdma_devs=%d\n", direct_io, nr_cdma_devs);

    bool resume = system("insmod pmh/pmh.ko");

    lio_init();
    init_maps();

    if (!resume) {
        printf("pmh installed, initing...\n");

        cdma_init(nr_cdma_devs);
        ddr_init();

        ctx_init();
        pr_debug("");
        nvme_controller_reg_init();
        pr_debug("");
        fet_init();
        pr_debug("");
        cmt_init();
        pr_debug("");
        //cmt_set_delay(0x12);
        pr_debug("");
        stream_init();
        pr_debug("");

        printf("Open Interface Ready. Turn On PC\n");
    } else {
        printf("pmh detected, resuming\n");
        cdma_init(nr_cdma_devs);
        stream_init();

        state = NVME_STATE_MAIN_RUNNING;
    }

	while (true)
	{
		switch(state)
		{
			case NVME_STATE_MAIN_DISABLED :
			{
				if (check_cc_en())
				{
					printf("CC_EN Set\n");

                    enable_nvme_controller();

                    state = NVME_STATE_MAIN_RUNNING;

                    printf("NVMe Controller Enabled\n");
				}

				break;
			}
			case NVME_STATE_MAIN_RUNNING :
			{
				for (int i = 0; i < NR_THREADS; i++) {
                    threads[i] = std::thread(run_nvme, i, direct_io);
				}

				for (int i = 0; i < NR_THREADS; i++) {
				    threads[i].join();
				}

                state = NVME_STATE_MAIN_DISABLED;
                pr_debug("disabled");
                if (check_cc_en() == FALSE)
                {
                    ctx_init();
                    cmt_init();
//					nvm_cmds_init();

                    nvme_reg_csts_rdy_set(FALSE);

                    printf("CC_EN Clear\n");
                }
				break;
			}
		    default:
		        __builtin_unreachable();
		}
	}
}


