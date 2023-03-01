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
#include "hw_cdma.hh"
#include "hw_cmt.h"
#include "nvme_admin_cmds.h"
#include <config.h>


static void create_io_sq(nvme_sq_entry_t* sq_entry)
{
	nvme_sq_create_io_sq_dw10_t* sq_entry_dw10 = (nvme_sq_create_io_sq_dw10_t*)(&sq_entry->dw[10]);
	nvme_sq_create_io_sq_dw11_t* sq_entry_dw11 = (nvme_sq_create_io_sq_dw11_t*)(&sq_entry->dw[11]);

	UINT32 sq_id = sq_entry_dw10->qid;
	UINT32 queue_size = sq_entry_dw10->qsize;
	UINT32 cq_id = sq_entry_dw11->cqid;
	UINT64 base_addr64 = sq_entry->prp64[0];

	printf("Admin Command(Create IO SQ), sq_id : %d, cq_id : %d, queue_size : %d\n", sq_id, cq_id, queue_size);

	//assert(0 < sq_id && sq_id < NUM_NVME_IO_SQ);
	//assert(0 < cq_id && cq_id < NUM_NVME_IO_CQ);
	//assert(0 < queue_size && queue_size <= SIZE_NVME_SQ);

	sq_context_table_t sq_context;

	sq_context.SQT = 0;
	sq_context.SQH = 0;
	sq_context.QSIZE = queue_size;
	sq_context.FID = 0;
	sq_context.QV = 1;
	sq_context.PC = 1;
	sq_context.QPRIO = 0;
	sq_context.CMB = 0;
	sq_context.PID = 0;
	sq_context.CQID = cq_id;
	sq_context.QID = sq_id;
	sq_context.PRP1[0] = (UINT32)base_addr64;
	sq_context.PRP1[1] = (UINT32)(base_addr64 >> 32);
	sq_context.PRP[0] = (UINT32)base_addr64;
	sq_context.PRP[1] = (UINT32)(base_addr64 >> 32);

	ctx_set_sq_context(sq_id, &sq_context);
}


static void create_io_cq(nvme_sq_entry_t* sq_entry)
{

	nvme_sq_create_io_cq_dw10_t* sq_entry_dw10 = (nvme_sq_create_io_cq_dw10_t*)(&sq_entry->dw[10]);
	nvme_sq_create_io_cq_dw11_t* sq_entry_dw11 = (nvme_sq_create_io_cq_dw11_t*)(&sq_entry->dw[11]);

	UINT32 cq_id = sq_entry_dw10->qid;
	UINT32 queue_size = sq_entry_dw10->qsize;
	UINT32 irq_vector = sq_entry_dw11->iv;
	UINT64 base_addr64 = sq_entry->prp64[0];

	printf("Admin Command(Create IO CQ), cq_id : %d, queue_size : %d\n", cq_id, queue_size);

	//assert(0 < cq_id && cq_id < NUM_NVME_IO_SQ);
	//assert(0 < queue_size && queue_size <= SIZE_NVME_SQ);

	cq_context_table_t cq_context;

	cq_context.CQH = 0;
	cq_context.CQT = 0;
	cq_context.PID = 0;
	cq_context.IEN = 1;
	cq_context.PC = 1;
	cq_context.QV = 1;
	cq_context.EMPT = 1;
	cq_context.FID = 0;
	cq_context.QSIZE = queue_size;
	cq_context.IV = irq_vector;
	cq_context.SQID = 0;
	cq_context.QID = cq_id;
	cq_context.PRP1[0] = (UINT32)base_addr64;
	cq_context.PRP1[1] = (UINT32)(base_addr64 >> 32);
	cq_context.PRP_DW0 = (UINT32)base_addr64;
	cq_context.PRP_DW1 = (UINT32)(base_addr64 >> 32);
	cq_context.P = 1;
	//cq_context.PRPV = 0;

	ctx_set_cq_context(cq_id, &cq_context);
}


static void get_log_page(nvme_sq_entry_t* sq_entry, int tid)
{
	nvme_sq_get_log_page_dw10_t sq_entry_dw10;
	sq_entry_dw10.dw = sq_entry->dw[10];

	printf("Admin Command(Get Log Page), lid = %d\n", sq_entry_dw10.lid);

	switch (sq_entry_dw10.lid)
	{
		case NVME_LOG_PAGE_ID_SMART_HEALTH_INFORMATION:
		{
			UINT8* map_buf = (UINT8*)dma_base_addr(tid).virt;
			const UINT32 byte_len = 512;

			MEM_SET(map_buf, 0x0, byte_len);
			dc_clean(map_buf, byte_len);

			UINT64 buf_addr = (UINT64)dma_base_addr(tid).phys;
			UINT64* host_prp64_list = &sq_entry->prp64[0];

			cdma_by_tid(tid)->raw_upstream(host_prp64_list, buf_addr, byte_len);

			break;
		}
		case NVME_LOG_PAGE_ID_FIRMWARE_SLOT_INFORMATION:
		{
			UINT8* map_buf = (UINT8*)dma_base_addr(tid).virt;
			const UINT32 byte_len = 512;

			MEM_SET(map_buf, 0x0, byte_len);
			dc_clean(map_buf, byte_len);

			UINT64 buf_addr = (UINT64)dma_base_addr(tid).phys;
			UINT64* host_prp64_list = &sq_entry->prp64[0];

            cdma_by_tid(tid)->raw_upstream(host_prp64_list, buf_addr, byte_len);

			break;
		}
		case 0xC0:
		{
			printf("Vendor Specific Log ID\n");

			UINT8* map_buf = (UINT8*)dma_base_addr(tid).virt;
			const UINT32 byte_len = 512;

			MEM_SET(map_buf, 0x0, byte_len);
			dc_clean(map_buf, byte_len);

			UINT64 buf_addr = (UINT64)dma_base_addr(tid).phys;
			UINT64* host_prp64_list = &sq_entry->prp64[0];

            cdma_by_tid(tid)->raw_upstream(host_prp64_list, buf_addr, byte_len);

			break;
		}
		default:
		{
			assert(0);
		}
	}
}

static void identify_namespace_data(UINT8* buf)
{
	nvme_identify_namespace_data_t* namespace_data = (nvme_identify_namespace_data_t *)malloc(4096);

	MEM_SET(namespace_data, 0, sizeof(nvme_identify_namespace_data_t));

	namespace_data->nsze = TOTAL_CAPACITY_BLOCKS;
	namespace_data->ncap = TOTAL_CAPACITY_BLOCKS;
	namespace_data->nuse = TOTAL_CAPACITY_BLOCKS;
	namespace_data->thin_provisioning = 0;
	namespace_data->namespace_atomic = 0;
	namespace_data->deallocated = 0;
	namespace_data->unique_id = 0;
	namespace_data->nlbaf = 0;
	namespace_data->flbas.lba_format = 0;
	namespace_data->flbas.contiguous_metadata_buffer = 0;
	namespace_data->metadata_as_part_of_extened_data_lba = 0;
	namespace_data->meatadata_pointer = 0;
	namespace_data->protection_information_type_1 = 0;
	namespace_data->protection_information_type_2 = 0;
	namespace_data->protection_information_type_3 = 0;
	namespace_data->first_eight_bytes_of_metadata = 0;
	namespace_data->last_eight_bytes_of_metadata = 0;
	namespace_data->dps.protection_information = 0;
	namespace_data->dps.first_eight_bytes_enable = 0;
	namespace_data->nmic.namespace_sharing = 0;
	namespace_data->persist_through_power_loss = 0;
	namespace_data->write_exclusive_reservation = 0;
	namespace_data->exclusive_access_reservation = 0;
	namespace_data->write_exclusive_registrants_only = 0;
	namespace_data->exclusive_access_registrants_only = 0;
	namespace_data->write_exclusive_all_registrants = 0;
	namespace_data->exclusive_access_all_registrants = 0;
	namespace_data->ignore_existing_key_revision_1_3 = 0;
	namespace_data->remained_percentage_of_format_nvm = 0;
	namespace_data->format_progress_indicator = 0;
	namespace_data->deallocated_value = 0;
	namespace_data->deallocate_bit_in_write_zeros = 0;
	namespace_data->crc_for_guard_field = 0;
	namespace_data->nawun = 0;
	namespace_data->nawupf = 0;
	namespace_data->nacwu = 0;
	namespace_data->nabsn = 0;
	namespace_data->nabo = 0;
	namespace_data->nabspf = 0;
	namespace_data->noiob = 0;

	MEM_SET(namespace_data->nvmcap, 0x0, 16);
	MEM_SET(namespace_data->nguid, 0x0, 16);
	MEM_SET(namespace_data->eui64, 0x0, 8);

	namespace_data->lba_format[0].ms = 8;
	namespace_data->lba_format[0].lbads = 0xC;	// 4096 bytes
	namespace_data->lba_format[0].rp = 0;

	MEM_COPY32(buf, namespace_data, 4096);

	free(namespace_data);
}


void identify_controller_data(UINT8* buf)
{
	nvme_identify_controller_data_t* controller_data = (nvme_identify_controller_data_t *)malloc(sizeof(nvme_identify_controller_data_t));

	MEM_SET32(controller_data, 0, sizeof(nvme_identify_controller_data_t));

	controller_data->vid = 0x10EE;
	controller_data->ssvid = 0x10EE;

	const UINT8* sn_string = (UINT8*)"NVMe SSD";
	// const UINT32 sn_byte_size = MIN(20, sizeof(sn_string));
	// MEM_COPY(controller_data->sn, sn_string, sn_byte_size);
	// memcpy32(controller_data->sn, sn_string, 9);
	MEM_COPY(controller_data->sn, sn_string, 9);

	const UINT8* mn_string = (UINT8*)"NVMe SSD";
	const UINT32 mn_byte_size = MIN(40, sizeof(mn_string));
	MEM_COPY(controller_data->mn, mn_string, mn_byte_size);

	const UINT8* fr_string = (UINT8*)"NVMe SSD";
	const UINT32 fr_byte_size = MIN(8, sizeof(fr_string));
	MEM_COPY(controller_data->fr, fr_string, fr_byte_size);

	controller_data->rab = 0;

	const UINT32 ieee = 0xAEBEAF;
	const UINT32 ieee_byte_size = 3;
	MEM_COPY(controller_data->ieee, &ieee, ieee_byte_size);

	controller_data->multi_subsystem_port = 0;
	controller_data->multi_host = 0;
	controller_data->sr_iov = 0;

	controller_data->mdts = MAX_DATA_TRANSFER_SIZE_BITS;

	controller_data->cntlid = 0x10EE;
	controller_data->ver = ((0x0001) << 16) | ((0x02) << 8) | 0x00;

	controller_data->rtd3r = 0;
	controller_data->rtd3e = 0;
	controller_data->namespace_attribute_notices = 0;
	controller_data->firmware_activation_notices = 0;
	controller_data->host_id_128bit = 0;
	controller_data->non_operational_power_state_permissive_mode = 0;

	MEM_SET(controller_data->fguid, 0x0, 16);
	MEM_SET(controller_data->management_interface, 0x0, 16);

	controller_data->security_send_and_receive = 0;
	controller_data->format_nvm = 0;
	controller_data->firmware_commit_and_download = 0;
	controller_data->namespace_management = 0;
	controller_data->device_self_test = 0;
	controller_data->directives = 0;
	controller_data->nvme_mi_send_receive = 0;
	controller_data->virtualization_management = 0;
	controller_data->boorbell_buffer_config = 0;
	controller_data->acl = 3;
	controller_data->aerl = 3;
	controller_data->first_firmware_slot_read_only = 1;
	controller_data->number_of_firmware_slots = 1;
	controller_data->firmware_activation_without_reset = 0;
	controller_data->smart_log_page_per_namespace = 0;
	controller_data->command_supported_and_effects_log_page = 0;
	controller_data->extended_data_for_log_page = 0;
	controller_data->telemetry_initiated_log_page = 0;
	controller_data->elpe = 0;
	controller_data->npss = 0;
	controller_data->default_format_for_admin_vendor = 0;
	controller_data->auto_power_state_transition = 0;
	controller_data->wctemp = 0x0;
	controller_data->cctemp = 0x0;
	controller_data->mtfa = 0;
	controller_data->hmpre = 0;
	controller_data->hmmin = 0;

	MEM_SET(controller_data->tnvmcap, 0x0, 16);
	MEM_SET(controller_data->unvmcap, 0x0, 16);

	controller_data->number_of_rpmb_units = 0;
	controller_data->authentication_method = 0;
	controller_data->total_size = 0;
	controller_data->access_size = 0;
	controller_data->edstt = 0;
	controller_data->outstanding_device_self_test = 0;
	controller_data->fwug = 0;
	controller_data->kas = 0;
	controller_data->host_controlled_thermal_management = 0;
	controller_data->mntmt = 0;
	controller_data->mxtmt = 0;
	controller_data->crypto_erase_sanitize = 0;
	controller_data->block_erase_sanitize = 0;
	controller_data->overwrite_erase_sanitize = 0;
	controller_data->maximum_sq_entry_size = 6;
	controller_data->required_sq_entry_size = 6;
	controller_data->maximum_cq_entry_size = 4;
	controller_data->required_cq_entry_size = 4;
	controller_data->maxcmd = 0;
	controller_data->nn = 1;
	controller_data->compare = 0;
	controller_data->write_uncorrectable = 0;
	controller_data->dataset_management = 0;
	controller_data->write_zeroes = 0;
	controller_data->save_field_for_feature = 0;
	controller_data->reservation = 0;
	controller_data->timestamp = 0;
	controller_data->compare_and_write_fused = 0;
	controller_data->format_apply_to_all_namespaces = 0;
	controller_data->secure_erase_apply_to_all_namespaces = 0;
	controller_data->cryptographic_erase = 0;
	controller_data->volatile_write_cache = 0;
	controller_data->awun = 0;
	controller_data->awupf = 0;
	controller_data->default_format_for_nvm_vendor = 1;
	controller_data->acwu = 0;
	controller_data->support_type = 0;
	controller_data->keyed = 0;
	controller_data->bit_bucket = 0;
	controller_data->contiguous_physical_buffer_for_metadata = 0;
	controller_data->larger_data_than_to_be_transferred = 0;
	controller_data->metadata_pointer_contain_sgl_segment = 0;
	controller_data->address_field_specify_offset = 0;

	MEM_SET(controller_data->subnqn, 0x0, 256);

	MEM_COPY32(buf, (void *)controller_data, sizeof(nvme_identify_controller_data_t));

	free(controller_data);
}

static void identify(nvme_sq_entry_t* sq_entry, int tid)
{
	nvme_sq_identify_dw10_t sq_entry_dw10;
	sq_entry_dw10.dw = sq_entry->dw[10];

	printf("Admin Command(Identify), cns: 0x%X, tid=%d\n", sq_entry_dw10.cns, tid);

	switch (sq_entry_dw10.cns)
	{
		case NVME_SQ_IDENTIFY_CNS_NAMESPACE_DATA:
		{
            uint32_t prp_ofst = sq_entry->prp64[0] % SZ_4K;
            hybrid_addr_t buf_addr = dma_base_addr(tid) + prp_ofst;
            pr_debug();

			identify_namespace_data((uint8_t *)buf_addr.virt);
            dc_clean(buf_addr.virt, SZ_4K);

            cdma_by_tid(tid)->raw_upstream(sq_entry->prp64, buf_addr.phys, SZ_4K);

			break;
		}
		case NVME_SQ_IDENTIFY_CNS_CONTOLLER_DATA:
		{
            uint32_t prp_ofst = sq_entry->prp64[0] % SZ_4K;
            hybrid_addr_t buf_addr = dma_base_addr(tid) + prp_ofst;
            pr_debug();

            identify_controller_data((uint8_t *)buf_addr.virt);
            dc_clean(buf_addr.virt, SZ_4K);

            cdma_by_tid(tid)->raw_upstream(sq_entry->prp64, buf_addr.phys, SZ_4K);

            break;
		}
		case NVME_SQ_IDENTIFY_CNS_NAMESPACE_ACTIVE_LIST:
		{
			UINT8* map_buf = (UINT8*)dma_base_addr(tid).virt;
			const UINT32 byte_len = 4 * 1024;

			nvme_namespace_list_t* namespace_list = (nvme_namespace_list_t *)malloc(4096);
			pr_debug("");

			MEM_SET(namespace_list, 0x0, byte_len);

			namespace_list->identifier[0] = 1;

			MEM_COPY32(map_buf, namespace_list, 4096);
            dc_clean(map_buf, byte_len);

			free(namespace_list);

			UINT64 buf_addr = (UINT64)dma_base_addr(tid).phys;
			UINT64* host_prp64_list = &sq_entry->prp64[0];

            cdma_by_tid(tid)->raw_upstream(host_prp64_list, buf_addr, byte_len);

			break;
		}
		default:
		{
			assert(0);
		}
	}
}


static void set_feature(nvme_sq_entry_t* sq_entry, nvme_cq_entry_t* cq_entry)
{
	nvme_sq_set_feature_dw10_t sq_entry_dw10;
	sq_entry_dw10.dw = sq_entry->dw[10];

	printf("Admin Command(Set Feature), fid: 0x%X\n", sq_entry_dw10.fid);

	switch (sq_entry_dw10.fid)
	{
		case NVME_FEATURE_ID_ARBITRATION:
		{
			printf("NVME_FEATURE_ID_ARBITRATION\n");

			break;
		}
		case NVME_FEATURE_ID_NUMBER_OF_QUEUE:
		{
			nvme_sq_set_features_number_of_queues_dw11_t sq_entry_dw11;
			sq_entry_dw11.dw = sq_entry->dw[11];

			UINT16 sq_allocated = MEM_MIN(sq_entry_dw11.nsqr, NUM_NVME_IO_SQ - 1);
			UINT16 cq_allocated = MEM_MIN(sq_entry_dw11.ncqr, NUM_NVME_IO_CQ - 1);
			sq_entry_dw11.nsqr = sq_allocated;
			sq_entry_dw11.ncqr = cq_allocated;

			cq_entry->command_specific = sq_entry_dw11.dw;

			break;
		}
		case NVME_FEATURE_ID_INTERRUPT_COALESCING:
		{
			printf("NVME_FEATURE_ID_INTERRUPT_COALESCING\n");

			break;
		}
		case NVME_FEATURE_ID_ASYNCHRONOUS_EVENT_CONFIG:
		{
			printf("NVME_FEATURE_ID_ASYNCHRONOUS_EVENT_CONFIG\n");

			break;
		}
		default:
		{
			assert(0);
		}
	}
}


static void get_feature(nvme_sq_entry_t* sq_entry, int tid)
{
	nvme_sq_get_feature_dw10_t sq_entry_dw10;
	sq_entry_dw10.dw = sq_entry->dw[10];

	printf("Admin Command(Get Feature), fid: 0x%X\n", sq_entry_dw10.fid);

	switch (sq_entry_dw10.fid)
	{
		case NVME_FEATURE_ID_TEMPERATURE_THRESHOLD:
		{
			printf("NVME_FEATURE_ID_TEMPERATURE_THRESHOLD\n");

			break;
		}
		case NVME_FEATURE_ID_AUTO_POWER_STATE_TRANSITION:
		{
			UINT8* map_buf = (UINT8*)dma_base_addr(tid).virt;
			const UINT32 byte_len = sizeof(UINT64) * 32;

			MEM_SET(map_buf, 0x0, byte_len);
            dc_clean(map_buf, byte_len);

			UINT64 buf_addr = (UINT64)dma_base_addr(tid).phys;
			UINT64* host_prp64_list = &sq_entry->prp64[0];

            cdma_by_tid(tid)->raw_upstream(host_prp64_list, buf_addr, byte_len);

			break;
		}
		default:
		{
			assert(0);
		}
	}

}


static void aer(nvme_sq_entry_t* sq_entry)
{
	printf("Admin Command(Async. Event Request)\n");
}


UINT32 process_admin_cmd(nvme_sq_entry_t* sq_entry, int tid)
{
	nvme_cq_entry_t cq_entry;
	MEM_SET(&cq_entry, 0x0, sizeof(nvme_cq_entry_t));

	UINT32 need_completion = TRUE;

	switch (sq_entry->opc)
	{
		case NVME_ADMIN_OPCODE_CREATE_IO_SQ:
		{
			create_io_sq(sq_entry);

			break;
		}
		case NVME_ADMIN_OPCODE_GET_LOG_PAGE:
		{
			get_log_page(sq_entry, tid);

			break;
		}
		case NVME_ADMIN_OPCODE_CREATE_IO_CQ:
		{
			create_io_cq(sq_entry);

			break;
		}
		case NVME_ADMIN_OPCODE_IDENTIFY:
		{
			identify(sq_entry, tid);

			break;
		}
		case NVME_ADMIN_OPCODE_SET_FEATURE:
		{
			set_feature(sq_entry, &cq_entry);

			break;
		}
		case NVME_ADMIN_OPCODE_GET_FEATURE:
		{
			get_feature(sq_entry, tid);

			break;
		}
		case NVME_ADMIN_OPCODE_ASYNCHRONOUS_EVENT:
		{
			aer(sq_entry);
			need_completion = FALSE;

			break;
		}
		default:
		{
		    printf("Unimplemented admin opc=0x%x\n", sq_entry->opc);
//			assert(0);
		}
	}

	if (need_completion == TRUE)
	{
		while(cmt_send_completion(sq_entry, &cq_entry) == FALSE);
	}

	return TRUE;
}


