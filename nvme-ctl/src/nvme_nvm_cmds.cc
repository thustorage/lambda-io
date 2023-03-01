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
#include "hw_cdma.hh"
#include "hw_cmt.h"
#include "nvme_nvm_cmds.h"
#include <lio.hh>
#include <util.h>

//void nvm_cmds_init(void)
//{
//	pr_debug("");
//	MEM_SET(g_nvm_cmd_context, 0x0, sizeof(NVM_CMD_CONTEXT_T));
//}

struct nvme_meta {
    int64_t size_o;
    uint64_t calc_ns;
    uint64_t pre_ns;
    char buf_o[0];
};

static UINT32 calc_need_prp(UINT32 request_sector, UINT32 first_prp_low)
{
	const UINT32 mem_page_byte_size = 4 * 1024;
	const UINT32 sector_byte_size = 4 * 1024;

	UINT32 request_byte_size = request_sector * sector_byte_size;

	UINT32 first_prp_byte_size = mem_page_byte_size - (first_prp_low % mem_page_byte_size);

	UINT32 prp_need_num;
	if (request_byte_size > first_prp_byte_size)
	{
		UINT32 remian_byte_size = request_byte_size - first_prp_byte_size;

		prp_need_num = 1 + DIV_CEIL(remian_byte_size, mem_page_byte_size);
	}
	else
	{
		prp_need_num = 1;
	}

	return prp_need_num;
}

#if 0
static UINT64 current_prp_get_next(NVM_CMD_CONTEXT_T *g_nvm_cmd_context)
{
	g_nvm_cmd_context->prp_current_valid = TRUE;

	UINT32 prp_need_num = g_nvm_cmd_context->prp_need_num;
	UINT32 prp_next_index = g_nvm_cmd_context->prp_next_index;
	assert(prp_next_index < prp_need_num);

	g_nvm_cmd_context->prp_next_index = prp_next_index + 1;

	if (prp_need_num > 2)
	{
		prp_next_index = prp_next_index - 1;

		UINT64* prp_mem_addr = (UINT64*) dma_prp_buf_addr(g_nvm_cmd_context->tid).virt;// MAP_DMA_PRP_BUF_ADDR(g_nvm_cmd_context->tid);
		prp_mem_addr = prp_mem_addr + prp_next_index;

		UINT64_T prp_current;
		prp_current.ddw = *prp_mem_addr;

		return prp_current.ddw;
	}
	else
	{
		UINT64_T prp_current;
		prp_current.ddw = g_nvm_cmd_context->sq_entry->prp64[1];

		return prp_current.ddw;
	}
}

static UINT64 current_prp_get(NVM_CMD_CONTEXT_T *g_nvm_cmd_context)
{
	if (g_nvm_cmd_context->prp_current_valid == TRUE)
	{
		UINT64_T prp_current;
		prp_current.ddw = g_nvm_cmd_context->prp_current.ddw;

		return prp_current.ddw;
	}
	else
	{
		UINT64_T prp_current;
		prp_current.ddw = current_prp_get_next(g_nvm_cmd_context);

		return prp_current.ddw;
	}
}
#endif

void current_prp_invalid(NVM_CMD_CONTEXT_T *nvm_cmd_ctx)
{
	assert(nvm_cmd_ctx->prp_current_valid == TRUE);
    nvm_cmd_ctx->prp_current_valid = FALSE;
}

static void parse_nvm_command(nvme_sq_entry_t* sq_entry, NVM_CMD_CONTEXT_T *nvm_cmd_ctx)
{
	nvme_sq_write_dw10_t* sq_entry_dw10 = (nvme_sq_write_dw10_t*)(&sq_entry->dw[10]);
	nvme_sq_write_dw11_t* sq_entry_dw11 = (nvme_sq_write_dw11_t*)(&sq_entry->dw[11]);

	UINT32 slba[2];
	slba[0] = sq_entry_dw10->slba_low;
	slba[1] = sq_entry_dw11->slba_high;

	assert(slba[1] == 0);
	assert(slba[0] < TOTAL_CAPACITY_BLOCKS);

	nvme_sq_write_dw12_t* sq_entry_dw12 = (nvme_sq_write_dw12_t*)(&sq_entry->dw[12]);

	UINT32 request_sector = sq_entry_dw12->nlb + 1;

	assert(request_sector <= (1 << MAX_DATA_TRANSFER_SIZE_BITS));
	UINT64_T prp_current;
	prp_current.ddw = sq_entry->prp64[0];

	UINT32 first_prp_low = prp_current.low;
	UINT32 prp_need_num = calc_need_prp(request_sector, first_prp_low);

    nvm_cmd_ctx->slba = slba[0];
    nvm_cmd_ctx->remain_sector = request_sector;
    nvm_cmd_ctx->prp_need_num = prp_need_num;

    nvm_cmd_ctx->prp_next_index = 1;
    nvm_cmd_ctx->prp_current_valid = TRUE;
    nvm_cmd_ctx->prp_current.ddw = prp_current.ddw;

    nvm_cmd_ctx->sq_entry = sq_entry;

}

static void nvm_fetch_prp(NVM_CMD_CONTEXT_T *nvm_cmd_ctx)
{
	UINT32 prp_need_num = nvm_cmd_ctx->prp_need_num;
	int tid = nvm_cmd_ctx->tid;

	assert(prp_need_num > 2);

	UINT64 second_prp = nvm_cmd_ctx->sq_entry->prp64[1];
	UINT32 byte_len = (prp_need_num - 1) * 8;

	UINT32 prp_low = nvm_cmd_ctx->sq_entry->prp2[0];

	const UINT32 mem_page_byte_size = 4 * 1024;

	UINT32 prp_byte_size = mem_page_byte_size - (prp_low % mem_page_byte_size);

    if (prp_byte_size < byte_len) {
        pr_msg("prp_byte_size=0x%x, byte_len=0x%x", prp_byte_size, byte_len);
    }
	assert(prp_byte_size >= byte_len);


	UINT64 prp_mem_addr = dma_prp_addr(tid).phys;// DMA_PRP_BUF_ADDR(tid);

	// sync for cpu
    dc_clean_and_inval(dma_prp_addr(tid).virt /* MAP_DMA_PRP_BUF_ADDR(tid)*/, byte_len);

    cdma_by_tid(tid)->pcie_downstream(prp_mem_addr, second_prp, byte_len);
}

#if 0
static void nvm_prp_data_transfer(NVM_CMD_CONTEXT_T *g_nvm_cmd_context)
{
	UINT64 slba = g_nvm_cmd_context->slba;
	UINT32 remain_sector = g_nvm_cmd_context->remain_sector;

	assert(remain_sector > 0);
	const UINT32 sector_byte_size = 4 * 1024;
	const UINT32 mem_page_byte_size = 4 * 1024;

	const UINT32 bytes_to_send = sector_byte_size * remain_sector;

	UINT32 bytes_sended = 0;
	UINT32 bytes_remain = bytes_to_send - bytes_sended;

	while(1)
	{
		UINT64_T prp_current;
		prp_current.ddw = current_prp_get(g_nvm_cmd_context);

		UINT32 prp_current_low = prp_current.low;
		UINT32 prp_bytes_available = mem_page_byte_size - (prp_current_low % mem_page_byte_size);

		UINT64 offset_bytes = slba * sector_byte_size + bytes_sended;

		UINT32 byte_len = 0;
		if(prp_bytes_available == mem_page_byte_size) 		//prp aligned
		{
			if(bytes_remain >= sector_byte_size)
			{
				byte_len = sector_byte_size;
			}
			else
			{
				byte_len = bytes_remain;
			}
		}
		else												//prp unaligned
		{
		    printf("!\n");
			if(bytes_remain >= prp_bytes_available)
			{
				byte_len = prp_bytes_available;
			}
			else
			{
				byte_len = bytes_remain;
			}

		}

		pr_debug("");
		if (g_nvm_cmd_context->sq_entry->opc == NVME_NVM_OPCODE_READ)
		{
			axi_cdma_pcie_prp_data(offset_bytes, prp_current.ddw, byte_len, FALSE);
		}
		else if (g_nvm_cmd_context->sq_entry->opc == NVME_NVM_OPCODE_WRITE)
		{
			axi_cdma_pcie_prp_data(offset_bytes, prp_current.ddw, byte_len, TRUE);
		}
		else
		{
			assert(0);
		}
		pr_debug("");

		current_prp_invalid(g_nvm_cmd_context);

		bytes_sended += byte_len;
		bytes_remain -= byte_len;

		if (bytes_remain == 0)
		{
			break;
		}
	}
}
#endif

struct extent_t {
    uint64_t addr : 40; // in bytes, 1TB
    uint64_t len : 24; // in bytes, 16MB
};

void xfer_by_extent(uint64_t dst_addr, extent_t *ext, uint32_t nr_exts, int tid)
{
    auto sgd = (sgd_t *)dma_sgl_addr(tid).virt;
    MEM_SET32(dma_sgl_addr(tid).virt, 0, nr_exts * sizeof(sgd_t));

    for (uint32_t cur_idx = 0; cur_idx < nr_exts; cur_idx++) {
        sgd[cur_idx].dst = dst_addr;
        sgd[cur_idx].src = ext[cur_idx].addr + ddr_base_addr.phys;
        sgd[cur_idx].size = ext[cur_idx].len;
        dst_addr += ext[cur_idx].len;
        sgd[cur_idx].next = dma_sgl_addr(tid).phys + (cur_idx + 1) * sizeof(sgd_t);
//        pr_msg("cur_idx=%u, dst=0x%016lx, src=0x%016lx, size=0x%08x", cur_idx,
//               sgd[cur_idx].dst, sgd[cur_idx].src, sgd[cur_idx].size);
    }

    dc_clean(dma_sgl_addr(tid).virt, nr_exts * sizeof(sgd_t));
    int status = cdma_by_tid(tid)->call_sg(dma_sgl_addr(tid).phys, dma_sgl_addr(tid).phys + (nr_exts - 1) * sizeof(sgd_t));
    assert(status == 0);
}

UINT32 process_nvm_cmd(nvme_sq_entry_t* sq_entry, int tid, bool direct_io)
{
    NVM_CMD_CONTEXT_T nvm_cmd_ctx;
    nvm_cmd_ctx.tid = tid;

	switch (sq_entry->opc)
	{
		case NVME_NVM_OPCODE_WRITE:
		case NVME_NVM_OPCODE_READ:
		case NVME_NVM_OPCODE_LIO_READ:
		case NVME_NVM_OPCODE_LIO_WRITE:
		    break;
		default:
			assert(0);
	}

    /* parse */
    parse_nvm_command(sq_entry, &nvm_cmd_ctx);
    uint32_t nr_prps = nvm_cmd_ctx.prp_need_num;

    nvme_sq_write_dw12_t* sq_entry_dw12 = (nvme_sq_write_dw12_t*)(&sq_entry->dw[12]);

    UINT32 nr_sectors = sq_entry_dw12->nlb + 1;

    pr_eval("NVM Command, opcode = 0x%x, lba = 0x%016lx, nlba = 0x%x, tid=%d",
            sq_entry->opc, nvm_cmd_ctx.slba, nvm_cmd_ctx.remain_sector, tid);

    /* addresses */
    pr_debug();
    if (nr_prps > 2)
    {
        pr_debug();
        nvm_fetch_prp(&nvm_cmd_ctx);
    } else if (nr_prps == 2) {
        uint64_t *prp = (uint64_t *) dma_prp_addr(tid).virt;
        mem_write64(prp, nvm_cmd_ctx.sq_entry->prp64[1]);
    }

    uint64_t *prp_list = (uint64_t *) dma_prp_addr(tid).virt;
    memmove(prp_list + 1, prp_list, sizeof(uint64_t) * (nr_prps - 1));
    mem_write64(prp_list, nvm_cmd_ctx.sq_entry->prp64[0]);

    for (uint32_t i = 0; i < nr_prps; i++) {
        prp_list[i] += PCIE_EP_OB_BASE_ADDR;
    }

    /* data xfer and processing */
    uint64_t start_address = nvm_cmd_ctx.slba * LOGICAL_BLOCK_BYTES;
    addr_list_t host_addrs = addr_list_t{prp_list};
    addr_list_t buf_addrs = addr_list_t{dma_buf_addr(tid).phys };
    addr_list_t dev_addrs = addr_list_t{ddr_base_addr.phys + start_address};

    if (sq_entry->opc == NVME_NVM_OPCODE_WRITE) {
#ifdef ENABLE_EVAL
        uint64_t ts0;
            ts0 = wall_time_ns();
#endif
        if (direct_io) {
            cdma_by_tid(tid)->xfer(dev_addrs, host_addrs, nr_sectors, tid);
        } else {
#ifdef ENABLE_EVAL
        uint64_t ts1, ts2;
#endif
        cdma_by_tid(tid)->xfer(buf_addrs, host_addrs, nr_sectors, tid);
#ifdef ENABLE_EVAL
        ts1 = wall_time_ns();
#endif
        cdma_by_tid(tid)->xfer(dev_addrs, buf_addrs, nr_sectors, tid);
#ifdef ENABLE_EVAL
        ts2 = wall_time_ns();
            pr_eval("xfer host=>dram, %luns", ts1 - ts0);
            pr_eval("xfer dram=>dimm, %luns", ts2 - ts1);
#endif
        }
        pr_eval("write, %luns", wall_time_ns() - ts0);
    } else if (sq_entry->opc == NVME_NVM_OPCODE_READ) {
        if (nr_sectors == 1 && nr_prps == 2) {
            for (int i = 0; i < 2; i++) {
                prp_list[i] -= PCIE_EP_OB_BASE_ADDR;
            }
            cdma_by_tid(tid)->raw_upstream(prp_list, dev_addrs[0] + prp_list[0] % SZ_4K, SZ_4K);
            goto completion;
        }
        if (direct_io) {
            cdma_by_tid(tid)->xfer(host_addrs, dev_addrs, nr_prps, tid);
        } else {
#ifdef ENABLE_EVAL
            uint64_t ts0, ts1, ts2;
                ts0 = wall_time_ns();
#endif
            cdma_by_tid(tid)->xfer(buf_addrs, dev_addrs, nr_prps, tid);
#ifdef ENABLE_EVAL
            ts1 = wall_time_ns();
#endif
            cdma_by_tid(tid)->xfer(host_addrs, buf_addrs, nr_prps, tid);
#ifdef ENABLE_EVAL
            ts2 = wall_time_ns();
                pr_eval("xfer dimm=>dram, %luns", ts1 - ts0);
                pr_eval("xfer dram=>host, %luns", ts2 - ts1);
                pr_eval("read, %luns", wall_time_ns() - ts0);

#endif
        }
    } else if (sq_entry->opc == NVME_NVM_OPCODE_LIO_READ) {
        /* lambda io */
        /* prepare source and destination */
#ifdef ENABLE_EVAL
        uint64_t ts0, ts1, ts2, ts3;
#endif

        uint32_t nr_input_file_blks = sq_entry->cdw13;
        size_t size_i = sq_entry->cdw13 * SZ_4K;
        uint32_t nr_extents = sq_entry->cdw14;
        uint32_t len_extents = nr_extents * sizeof(extent_t);
        hybrid_addr_t lio_addr = dma_lio_addr(tid); // extents first; meta and returned output later
        hybrid_addr_t buf_addr = dma_buf_addr(tid);
        uint64_t host_meta_addr = nvm_cmd_ctx.sq_entry->mptr64;
        uint32_t lba_idx = 0;

        // 1. fetch lbas
#ifdef ENABLE_EVAL
        ts0 = wall_time_ns();
#endif
        if (nr_extents > 1) {
            hybrid_addr_t lba_addr = dma_lba_addr(tid);
            auto *lbas = (uint64_t *)lba_addr.virt;

            assert(len_extents <= SZ_4K);
            dc_clean_and_inval(lio_addr.virt, len_extents);
            cdma_by_tid(tid)->pcie_downstream(lio_addr.phys, host_meta_addr, len_extents);

            auto *exts = (extent_t *)lio_addr.virt;

            for (uint32_t i = 0; i < nr_extents; i++) {
                uint64_t addr_i = exts[i].addr;
                uint32_t len_i = exts[i].len;
                for (uint32_t j = 0; j < len_i; j += SZ_4K) {
                    lbas[lba_idx++] = addr_i + j + ddr_base_addr.phys;
                }
//                pr_msg("i=%u, addr=%lu, len=%u", i, addr_i, size_i);
            }
            assert(lba_idx == nr_input_file_blks);

            dev_addrs = addr_list_t{lbas};
        }

#ifdef ENABLE_EVAL
                ts1 = wall_time_ns();
#endif
        pr_debug("");

        // 2. read file data
        auto header = (nvme_meta *)lio_addr.virt;

        uint64_t ts_s2d = wall_time_ns();
        // transfer from dimm to user buffer
        dc_clean_and_inval(buf_addr.virt, size_i);
        cdma_by_tid(tid)->xfer(buf_addrs, dev_addrs, nr_input_file_blks, tid);
        header->pre_ns = wall_time_ns() - ts_s2d;

        pr_debug("");

        // 3. calculate
        uint64_t ts_calc = wall_time_ns();
        int size_o = lio_call(sq_entry->cdw15, header->buf_o, buf_addr.virt, size_i);
        header->calc_ns = wall_time_ns() - ts_calc;

        // size of buf_o
        size_t max_size_o = nr_sectors * LOGICAL_BLOCK_BYTES;

//        pr_msg("start_addr=0x%016lx", start_address);
//        pr_msg("size_o=%d, ret_64=%ld", size_o, header->ret_64);
        pr_debug("");

        if ((size_t)size_o > max_size_o) {
            pr_msg("size_o=0x%08x, > max_size_o=0x%08lx", size_o, max_size_o);
            size_o = max_size_o;
        }
        header->size_o = size_o;
        size_t total_len = sizeof(nvme_meta) + size_o;

        // 4. return metadata and data
        // sync for cdma
#ifdef ENABLE_EVAL
                ts2 = wall_time_ns();
#endif
        dc_clean(header, total_len);
        // xfer metadata to host
        pr_debug("");

        // reuse host_meta_addr as the first sector
        memmove(prp_list + 1, prp_list, sizeof(uint64_t) * nr_prps);
        mem_write64(prp_list, host_meta_addr + PCIE_EP_OB_BASE_ADDR);
        addr_list_t lio_data_addrs {lio_addr.phys};
        addr_list_t host_result_addrs {prp_list};
        cdma_by_tid(tid)->xfer(host_result_addrs, lio_data_addrs, div_up(total_len, SZ_4K), tid);
#ifdef ENABLE_EVAL
                ts3 = wall_time_ns();
#endif

        pr_eval("fetch lbas, %luns", ts1 - ts0);
        pr_eval("xfer dimm ==> dram, %luns", ts2 - ts1);
        pr_eval("xfer dram ==> host, %luns", ts3 - ts2);
        pr_eval("lio, %luns", wall_time_ns() - ts0);
    } else {
        // lambda write
        uint32_t nr_output_file_data_blks = sq_entry->cdw13;
        uint32_t nr_extents = sq_entry->cdw14;
        uint32_t len_extents = nr_extents * sizeof(extent_t);
        hybrid_addr_t lio_addr = dma_lio_addr(tid); // extents, input, and returned meta
        hybrid_addr_t buf_addr = dma_buf_addr(tid); // output to file
        hybrid_addr_t lba_addr = dma_lba_addr(tid); // lbas
        auto *exts = (extent_t *)lio_addr.virt;
        auto *lbas = (uint64_t *)lba_addr.virt;
        uint64_t host_meta_addr = nvm_cmd_ctx.sq_entry->mptr64;
        uint32_t lba_idx = 0;
        auto size_i = nr_sectors * SZ_4K;

        // 1. fetch lbas
        if (nr_extents > 1) {
            assert(len_extents <= SZ_4K);
            dc_clean_and_inval(lio_addr.virt, len_extents);
            cdma_by_tid(tid)->pcie_downstream(lio_addr.phys, host_meta_addr, len_extents);
            for (uint32_t i = 0; i < nr_extents; i++) {
                uint64_t addr_i = exts[i].addr;
                uint32_t len_i = exts[i].len;
                for (uint32_t j = 0; j < len_i; j += SZ_4K) {
                    lbas[lba_idx++] = addr_i + j + ddr_base_addr.phys;
                }
            }
            assert(lba_idx == nr_output_file_data_blks);

            dev_addrs = addr_list_t{lbas};
        }

        // 2. download input data
        addr_list_t host_data_addrs {prp_list};
        addr_list_t buf_i_addrs{lio_addr.phys};
        dc_clean_and_inval(lio_addr.virt, size_i);
        cdma_by_tid(tid)->xfer(buf_i_addrs, host_data_addrs, nr_sectors, tid);

        // 3. calculate
        auto ts_calc = wall_time_ns();
        size_t size_o = lio_call(sq_entry->cdw15, buf_addr.virt, lio_addr.virt, size_i);
        ts_calc = wall_time_ns() - ts_calc;

        // 4. write to file
        auto ts_io = wall_time_ns();
        dc_clean(buf_addr.virt, size_o);
        cdma_by_tid(tid)->xfer(dev_addrs, buf_addrs, div_up(size_o, SZ_4K), tid);
        ts_io = wall_time_ns() - ts_io;

        // 5. return meta
        auto meta = (nvme_meta *)lio_addr.virt;
        meta->calc_ns = ts_calc;
        meta->pre_ns = ts_io;
        meta->size_o = size_o;
        dc_clean(lio_addr.virt, sizeof(nvme_meta));
        cdma_by_tid(tid)->pcie_upstream(host_meta_addr, lio_addr.phys, sizeof(nvme_meta));
    }

    /* completion */
completion:
    nvme_cq_entry_t cq_entry = {};
    while(cmt_send_completion(sq_entry, &cq_entry) == FALSE) {}

	return 0;
}
