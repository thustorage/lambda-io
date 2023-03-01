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


#ifndef __NVME_STRUCT_H__
#define __NVME_STRUCT_H__

typedef union _nvme_sq_entry_t
{
	UINT32	dw[16];

	struct
	{
		UINT8	opc;
		UINT8	fuse			:2;
		UINT8	reserved0		:5;
		UINT8	psdt			:1;
		UINT16	cid;

		UINT32	nsid;
		UINT8	reserved1[8];

		union {
            UINT32	mptr[2];
            UINT64   mptr64;
		};

		union
		{
			UINT32	dptr[4];

			UINT32	sgl1[4];

			UINT64	prp64[2];
			struct
			{
				UINT32	prp1[2];
				UINT32	prp2[2];
			};
		};

		UINT32	ndt;
		UINT32	ndm;

		UINT32	cdw12;
		UINT32	cdw13;
		UINT32	cdw14;
		UINT32	cdw15;
	};
} nvme_sq_entry_t;

typedef union _nvme_cq_entry_t
{
	UINT32	dw[4];

	struct
	{
		UINT32	command_specific;

		UINT8	reserved0[4];

		UINT16	sqhd;
		UINT16	sqid;

		UINT16	cid;
		union
		{
			UINT16	status;
			struct
			{
				UINT16	phase_tag				:1;
				UINT16	sc						:8;
				UINT16	sct						:3;
				UINT16	reserved1				:2;
				UINT16	more					:1;
				UINT16	dnr						:1;
			};

			struct
			{
				UINT16	unused0					:1;
				UINT16	status_field			:15;
			};
		};
	};
} nvme_cq_entry_t;

typedef union _nvme_sq_create_io_cq_dw10_t
{
	UINT32	dw;

	struct
	{
		UINT16	qid;
		UINT16	qsize;
	};
} nvme_sq_create_io_cq_dw10_t;


typedef union _nvme_sq_create_io_cq_dw11_t
{
	UINT32	dw;

	struct
	{
		UINT16	pc_value		:1;
		UINT16	ien				:1;
		UINT16	reserved0		:14;
		UINT16	iv;
	};
} nvme_sq_create_io_cq_dw11_t;


typedef union _nvme_sq_create_io_sq_dw10_t
{
	UINT32	dw;

	struct
	{
		UINT16	qid;
		UINT16	qsize;
	};
} nvme_sq_create_io_sq_dw10_t;


typedef union _nvme_sq_create_io_sq_dw11_t
{
	UINT32	dw;

	struct
	{
		UINT16	pc_value		:1;
		UINT16	qprio			:2;
		UINT16	reserved0		:13;
		UINT16	cqid;
	};
} nvme_sq_create_io_sq_dw11_t;







typedef union _nvme_sq_get_log_page_dw10_t
{
	UINT32	dw;

	struct
	{
		UINT8	lid;

		union
		{
			UINT8	b;

			struct
			{
				UINT8	lsp				:4;
				UINT8	reserved0		:3;
				UINT8	rae				:1;
			};

			struct
			{
				UINT8	create_telemetry_data	:1;
				UINT8	reserved1				:7;
			};
		};

		UINT16	numdl;
	};
} nvme_sq_get_log_page_dw10_t;


typedef union _nvme_sq_get_log_page_dw11_t
{
	UINT32	dw;

	struct
	{
		UINT16	numdl;
		UINT8	reserved0[2];
	};
} nvme_sq_get_log_page_dw11_t;

typedef union _nvme_sq_get_log_page_dw12_t
{
	UINT32	dw;

	UINT32	lpol;
} nvme_sq_get_log_page_dw12_t;

typedef union _nvme_sq_get_log_page_dw13_t
{
	UINT32	dw;

	UINT32	lpou;
} nvme_sq_get_log_page_dw13_t;




typedef union _nvme_sq_identify_dw10_t
{
	UINT32	dw;

	struct
	{
		UINT8	cns;
		UINT8	reserved0;
		UINT16	cntid;
	};
} nvme_sq_identify_dw10_t;


typedef union _nvme_sq_set_features_number_of_queues_dw11_t
{
	UINT32	dw;

	struct
	{
		UINT16	nsqr;
		UINT16	ncqr;
	};
} nvme_sq_set_features_number_of_queues_dw11_t;

typedef union _nvme_sq_set_feature_dw10_t
{
	UINT32	dw;

	struct
	{
		UINT32	fid				:8;
		UINT32	reserved0		:23;
		UINT32	sv				:1;
	};
} nvme_sq_set_feature_dw10_t;



typedef union _nvme_sq_get_feature_dw10_t
{
	UINT32	dw;

	struct
	{
		UINT32	fid				:8;
		UINT32	sel				:3;
		UINT32	reserved0		:21;
	};
} nvme_sq_get_feature_dw10_t;













typedef union _nvme_sq_write_dw10_t
{
	UINT32	dw;

	UINT32	slba_low;
} nvme_sq_write_dw10_t;

typedef union _nvme_sq_write_dw11_t
{
	UINT32	dw;

	UINT32	slba_high;
} nvme_sq_write_dw11_t;

typedef union _nvme_sq_write_dw12_t
{
	UINT32	dw;

	struct
	{
		UINT16	nlb;

		UINT8	reserved0		:4;
		UINT8	dtype			:4;

		UINT8	reserved1		:2;
		UINT8	prinfo			:4;
		UINT8	fua				:1;
		UINT8	lr				:1;
	};

	struct
	{
		UINT32	no_named0		:26;
		UINT32	prchk			:3;
		UINT32	pract			:1;
		UINT32	no_named1		:2;
	};

	struct
	{
		UINT32	no_named2					:26;
		UINT32	check_reference_tag			:1;
		UINT32	check_application_tag		:1;
		UINT32	check_guard					:1;
		UINT32	no_named3					:3;
	};
} nvme_sq_write_dw12_t;

typedef union _nvme_sq_write_dw13_t
{
	UINT32	dw;

	struct
	{
		union
		{
			UINT8	dsm;

			struct
			{
				UINT8	af						:4;
				UINT8	al						:2;
				UINT8	sequential_request		:1;
				UINT8	incompressible			:1;
			};
		};

		UINT8	reserved0;
		UINT16	dspec;
	};
} nvme_sq_write_dw13_t;

typedef union _nvme_sq_write_dw14_t
{
	UINT32	dw;

	UINT32	ilbrt;
} nvme_sq_write_dw14_t;

typedef union _nvme_sq_write_dw15_t
{
	UINT32	dw;

	struct
	{
		UINT16	lbatm;
		UINT16	lbat;
	};
} nvme_sq_write_dw15_t;



typedef union _nvme_sq_read_dw10_t
{
	UINT32	dw;

	UINT32	slba_low;
} nvme_sq_read_dw10_t;

typedef union _nvme_sq_read_dw11_t
{
	UINT32	dw;

	UINT32	slba_high;
} nvme_sq_read_dw11_t;

typedef union _nvme_sq_read_dw12_t
{
	UINT32	dw;

	struct
	{
		UINT16	nlb;

		UINT16	reserved0		:10;
		UINT16	prinfo			:4;
		UINT16	fua				:1;
		UINT16	lr				:1;
	};

	struct
	{
		UINT32	no_named0		:26;
		UINT32	prchk			:3;
		UINT32	pract			:1;
		UINT32	no_named1		:2;
	};

	struct
	{
		UINT32	no_named2					:26;
		UINT32	check_reference_tag			:1;
		UINT32	check_application_tag		:1;
		UINT32	check_guard					:1;
		UINT32	no_named3					:3;
	};
} nvme_sq_read_dw12_t;

typedef union _nvme_sq_read_dw13_t
{
	UINT32	dw;

	struct
	{
		union
		{
			UINT8	dsm;

			struct
			{
				UINT8	af						:4;
				UINT8	al						:2;
				UINT8	sequential_request		:1;
				UINT8	incompressible			:1;
			};
		};

		UINT8	reserved0[3];
	};
} nvme_sq_read_dw13_t;

typedef union _nvme_sq_read_dw14_t
{
	UINT32	dw;

	UINT32	eilbrt;
} nvme_sq_read_dw14_t;

typedef union _nvme_sq_read_dw15_t
{
	UINT32	dw;

	struct
	{
		UINT16	elbatm;
		UINT16	elbat;
	};
} nvme_sq_read_dw15_t;



typedef union _nvme_identify_power_state_desc_t
{
    UINT32  dw[8];

    struct
    {
        UINT16  mp;
        UINT16  reserved0           :8;
        UINT16  mps                 :1;
        UINT16  nops                :1;
        UINT16  reserved1           :6;

        UINT32  enlat;
        UINT32  exlat;

        UINT8   rrt                 :5;
        UINT8   reserved2           :3;

        UINT8   rrl                 :5;
        UINT8   reserved3           :3;

        UINT8   rwt                 :5;
        UINT8   reserved4           :3;

        UINT8   rwl                 :5;
        UINT8   reserved5           :3;

        UINT16  idlp;

        UINT8   reserved6           :6;
        UINT8   ips                 :2;

        UINT8   reserved7;

        UINT16  actp;

        UINT8   apw                 :3;
        UINT8   reserved8           :3;
        UINT8   aps                 :2;

        UINT8   reserved9[9];
    };
} nvme_identify_power_state_desc_t;

typedef union _nvme_identify_controller_data_t
{
	UINT32	dw[1024];

	struct
	{
		UINT16	vid;
		UINT16	ssvid;
		UINT8	sn[20];
		UINT8	mn[40];
		UINT8	fr[8];
		UINT8	rab;
		UINT8	ieee[3];

		union
		{
			UINT8	cmic;

			struct
			{
				UINT8	multi_subsystem_port	:1;
				UINT8	multi_host				:1;
				UINT8	sr_iov					:1;
				UINT8	reserved0				:5;
			};
		};

		UINT8	mdts;
		UINT16	cntlid;
		UINT32	ver;
		UINT32	rtd3r;
		UINT32	rtd3e;

		union
		{
			UINT32	oaes;

			struct
			{
				UINT32	reserved1						:8;
				UINT32	namespace_attribute_notices		:1;
				UINT32	firmware_activation_notices		:1;
				UINT32	reserved2						:22;
			};
		};

		union
		{
			UINT32	ctratt;

			struct
			{
				UINT32	host_id_128bit									:1;
				UINT32	non_operational_power_state_permissive_mode		:1;
				UINT32	reserved3										:30;
			};
		};

		UINT8	reserved4[12];
		UINT8	fguid[16];
		UINT8	reserved5[112];
		UINT8	management_interface[16];


		union
		{
			UINT16	oacs;

			struct
			{
				UINT16	security_send_and_receive		:1;
				UINT16	format_nvm						:1;
				UINT16	firmware_commit_and_download	:1;
				UINT16	namespace_management			:1;
				UINT16	device_self_test				:1;
				UINT16	directives						:1;
				UINT16	nvme_mi_send_receive			:1;
				UINT16	virtualization_management		:1;
				UINT16	boorbell_buffer_config			:1;
				UINT16	reserved6						:7;
			};
		};

		UINT8	acl;
		UINT8	aerl;

		union
		{
			UINT8	frmw;

			struct
			{
				UINT8	first_firmware_slot_read_only			:1;
				UINT8	number_of_firmware_slots				:3;
				UINT8	firmware_activation_without_reset		:1;
				UINT8	reserved7								:3;
			};
		};

		union
		{
			UINT8	lpa;

			struct
			{
				UINT8	smart_log_page_per_namespace			:1;
				UINT8	command_supported_and_effects_log_page	:1;
				UINT8	extended_data_for_log_page				:1;
				UINT8	telemetry_initiated_log_page			:1;
				UINT8	reserved8								:4;
			};
		};

		UINT8	elpe;
		UINT8	npss;

		union
		{
			UINT8	avscc;

			struct
			{
				UINT8	default_format_for_admin_vendor			:1;
				UINT8	reserved9								:7;
			};
		};

		union
		{
			UINT8	apsta;

			struct
			{
				UINT8	auto_power_state_transition				:1;
				UINT8	reserved10								:7;
			};
		};

		UINT16	wctemp;
		UINT16	cctemp;
		UINT16	mtfa;
		UINT32	hmpre;
		UINT32	hmmin;
		UINT64	tnvmcap[2];
		UINT64	unvmcap[2];

		union
		{
			UINT32	rpmbs;

			struct
			{
				UINT16	number_of_rpmb_units		:3;
				UINT16	authentication_method		:3;
				UINT16	reserved11					:10;
				UINT8	total_size;
				UINT8	access_size;
			};
		};

		UINT16	edstt;

		union
		{
			UINT8	dsto;

			struct
			{
				UINT8	outstanding_device_self_test	:1;
				UINT8	reserved12						:7;
			};
		};

		UINT8	fwug;
		UINT16	kas;

		union
		{
			UINT16	hctma;

			struct
			{
				UINT16	host_controlled_thermal_management	:1;
				UINT16	reserved13							:15;
			};
		};

		UINT16	mntmt;
		UINT16	mxtmt;

		union
		{
			UINT32	sanicap;

			struct
			{
				UINT32	crypto_erase_sanitize		:1;
				UINT32	block_erase_sanitize		:1;
				UINT32	overwrite_erase_sanitize	:1;
				UINT32	reserved14					:29;
			};
		};

		UINT8	reserved15[180];

		union
		{
			UINT8	sqes;

			struct
			{
				UINT8	maximum_sq_entry_size		:4;
				UINT8	required_sq_entry_size		:4;
			};
		};

		union
		{
			UINT8	cqes;

			struct
			{
				UINT8	maximum_cq_entry_size		:4;
				UINT8	required_cq_entry_size		:4;
			};
		};

		UINT16	maxcmd;
		UINT32	nn;

		union
		{
			UINT16	oncs;

			struct
			{
				UINT16	compare						:1;
				UINT16	write_uncorrectable			:1;
				UINT16	dataset_management			:1;
				UINT16	write_zeroes				:1;
				UINT16	save_field_for_feature		:1;
				UINT16	reservation					:1;
				UINT16	timestamp					:1;
				UINT16	reserved16					:9;
			};
		};

		union
		{
			UINT16	fuses;

			struct
			{
				UINT16	compare_and_write_fused		:1;
				UINT16	reserved17					:15;
			};
		};

		union
		{
			UINT8	fna;

			struct
			{
				UINT8	format_apply_to_all_namespaces			:1;
				UINT8	secure_erase_apply_to_all_namespaces	:1;
				UINT8	cryptographic_erase						:1;
				UINT8	reserved18								:5;
			};
		};

		union
		{
			UINT8	vwc;

			struct
			{
				UINT8	volatile_write_cache		:1;
				UINT8	reserved19					:7;
			};
		};

		UINT16	awun;
		UINT16	awupf;

		union
		{
			UINT8	nvscc;

			struct
			{
				UINT8	default_format_for_nvm_vendor		:1;
				UINT8	reserved20							:7;
			};
		};

		UINT8	reserved21;
		UINT16	acwu;
		UINT16	reserved22;

		union
		{
			UINT32	sgls;

			struct
			{
				UINT32	support_type								:2;
				UINT32	keyed										:1;
				UINT32	reserved23									:13;
				UINT32	bit_bucket									:1;
				UINT32	contiguous_physical_buffer_for_metadata		:1;
				UINT32	larger_data_than_to_be_transferred			:1;
				UINT32	metadata_pointer_contain_sgl_segment		:1;
				UINT32	address_field_specify_offset				:1;
				UINT32	reserved24									:11;
			};
		};

		UINT8	reserved25[228];
		UINT8	subnqn[256];
		UINT8	reserved26[768];
		UINT8	nvme_over_fabrics[256];

		nvme_identify_power_state_desc_t psd[32];

		UINT8	vendor_specific[1024];

	};
} nvme_identify_controller_data_t;









typedef union _nvme_namespace_formatted_lba_size_t
{
	UINT8	b;

	struct
	{
		UINT8	lba_format					:4;
		UINT8	contiguous_metadata_buffer	:1;
		UINT8	reserved1					:3;
	};

} nvme_namespace_formatted_lba_size_t;


typedef union _nvme_namespace_e2e_data_protection_setting_t
{
	UINT8	b;

	struct
	{
		UINT8	protection_information				:3;
		UINT8	first_eight_bytes_enable			:1;
		UINT8	reserved4							:4;
	};

} nvme_namespace_e2e_data_protection_setting_t;


typedef union _nvme_namespace_sharing_capabilities_t
{
	UINT8	b;

	struct
	{
		UINT8	namespace_sharing		:1;
		UINT8	reserved5				:7;
	};

} nvme_namespace_sharing_capabilities_t;


typedef union _nvme_identify_lba_format_t
{
	UINT32	dw;

	struct
	{
		UINT16	ms;
		UINT8	lbads;
		UINT8	rp				:2;
		UINT8	reserved0		:6;
	};
} nvme_identify_lba_format_t;


typedef union _nvme_identify_namespace_data_t
{
	UINT32	dw[1024];

	struct
	{
		UINT64	nsze; // namespace size in logical blocks
		UINT64	ncap;
		UINT64	nuse;

		union
		{
			UINT8	nsfeat;

			struct
			{
				UINT8	thin_provisioning		:1;
				UINT8	namespace_atomic		:1;
				UINT8	deallocated				:1;
				UINT8	unique_id				:1;
				UINT8	reserved0				:4;
			};
		};

		UINT8	nlbaf;

		nvme_namespace_formatted_lba_size_t flbas;

		union
		{
			UINT8	mc;

			struct
			{
				UINT8	metadata_as_part_of_extened_data_lba	:1;
				UINT8	 meatadata_pointer						:1;
				UINT8	reserved1								:6;
			};
		};

		union
		{
			UINT8	dpc;

			struct
			{
				UINT8	protection_information_type_1		:1;
				UINT8	protection_information_type_2		:1;
				UINT8	protection_information_type_3		:1;
				UINT8	first_eight_bytes_of_metadata		:1;
				UINT8	last_eight_bytes_of_metadata		:1;
				UINT8	reserved2							:3;
			};
		};

		nvme_namespace_e2e_data_protection_setting_t dps;

		nvme_namespace_sharing_capabilities_t nmic;

		union
		{
			UINT8	rescap;

			struct
			{
				UINT8	persist_through_power_loss			:1;
				UINT8	write_exclusive_reservation			:1;
				UINT8	exclusive_access_reservation		:1;
				UINT8	write_exclusive_registrants_only	:1;
				UINT8	exclusive_access_registrants_only	:1;
				UINT8	write_exclusive_all_registrants		:1;
				UINT8	exclusive_access_all_registrants	:1;
				UINT8	ignore_existing_key_revision_1_3	:1;
			};
		};

		union
		{
			UINT8	fpi;

			struct
			{
				UINT8	remained_percentage_of_format_nvm	:7;
				UINT8	format_progress_indicator			:1;
			};
		};

		union
		{
			UINT8	dlfeat;

			struct
			{
				UINT8	deallocated_value				:3;
				UINT8	deallocate_bit_in_write_zeros	:1;
				UINT8	crc_for_guard_field				:1;
				UINT8	reserved3						:3;
			};
		};

		UINT16	nawun;
		UINT16	nawupf;
		UINT16	nacwu;
		UINT16	nabsn;
		UINT16	nabo;
		UINT16	nabspf;
		UINT16	noiob;
		UINT64	nvmcap[2];

		UINT8	reserved4[40];

		UINT8	nguid[16];
		UINT8	eui64[8];

		nvme_identify_lba_format_t  lba_format[16];

		UINT8	reserved5[192];
		UINT8	vendor_specific[3712];


	};
} nvme_identify_namespace_data_t;


typedef union _nvme_namespace_list_t
{
	UINT32	dw[1024];

	UINT32	identifier[1024];
} nvme_namespace_list_t;

// Opcodes for Admin Commands
typedef enum _NVME_ADMIN_OPCODE_E
{
	NVME_ADMIN_OPCODE_DELETE_IO_SQ					= 0x00,
	NVME_ADMIN_OPCODE_CREATE_IO_SQ					= 0x01,
	NVME_ADMIN_OPCODE_GET_LOG_PAGE					= 0x02,
	NVME_ADMIN_OPCODE_DELETE_IO_CQ					= 0x04,
	NVME_ADMIN_OPCODE_CREATE_IO_CQ					= 0x05,
	NVME_ADMIN_OPCODE_IDENTIFY						= 0x06,
	NVME_ADMIN_OPCODE_ABORT							= 0x08,
	NVME_ADMIN_OPCODE_SET_FEATURE					= 0x09,
	NVME_ADMIN_OPCODE_GET_FEATURE					= 0x0A,
	NVME_ADMIN_OPCODE_ASYNCHRONOUS_EVENT			= 0x0C,
	NVME_ADMIN_OPCODE_NAMESPACE_MANAGEMENT			= 0x0D,
	NVME_ADMIN_OPCODE_FIRMWARE_COMMIT				= 0x10,
	NVME_ADMIN_OPCODE_FIRMWARE_DOWNLOAD				= 0x11,
	NVME_ADMIN_OPCODE_DEVICE_SELF_TEST				= 0x14,
	NVME_ADMIN_OPCODE_NAMESPACE_ATTACHMENT			= 0x15,
	NVME_ADMIN_OPCODE_KEEP_ALIVE					= 0x18,
	NVME_ADMIN_OPCODE_DIRECTIVE_SEND				= 0x19,
	NVME_ADMIN_OPCODE_DIRECTIVE_RECEIVE				= 0x1A,
	NVME_ADMIN_OPCODE_VIRTUALIZATION_MANAGEMENT		= 0x1C,
	NVME_ADMIN_OPCODE_MI_SEND						= 0x1D,
	NVME_ADMIN_OPCODE_MI_RECEIVE					= 0x1E,
	NVME_ADMIN_OPCODE_DOORBELL_BUFFER_CONFIG		= 0x7F,
	NVME_ADMIN_OPCODE_FORMAT						= 0x80,
	NVME_ADMIN_OPCODE_SECURITY_SEND					= 0x81,
	NVME_ADMIN_OPCODE_SECURITY_RECEIVE				= 0x82,
	NVME_ADMIN_OPCODE_SANITIZE						= 0x84,
} NVME_ADMIN_OPCODE_E;

// Opcodes for NVM Commands
typedef enum _NVME_NVM_OPCODE_E
{
	NVME_NVM_OPCODE_FLUSH							= 0x00,
	NVME_NVM_OPCODE_WRITE							= 0x01,
	NVME_NVM_OPCODE_READ							= 0x02,
	NVME_NVM_OPCODE_WRITE_UNCORRECTABLE				= 0x04,
	NVME_NVM_OPCODE_COMPARE							= 0x05,
	NVME_NVM_OPCODE_WRITE_ZEROES					= 0x08,
	NVME_NVM_OPCODE_DATASET_MANAGEMENT				= 0x09,
	NVME_NVM_OPCODE_RESERVATION_REGISTER			= 0x0D,
	NVME_NVM_OPCODE_RESERVATION_REPORT				= 0x0E,
	NVME_NVM_OPCODE_RESERVATION_ACQUIRE				= 0x11,
	NVME_NVM_OPCODE_RESERVATION_RELEASE				= 0x15,
	NVME_NVM_OPCODE_LIO_WRITE                       = 0x21,
	NVME_NVM_OPCODE_LIO_READ                        = 0x22,
} NVME_NVM_OPCODE_E;

// Feature Identifiers
typedef enum _NVME_FEATURE_ID_E
{
	NVME_FEATURE_ID_ARBITRATION						= 0x01,
	NVME_FEATURE_ID_POWER_MANAGEMENT				= 0x02,
	NVME_FEATURE_ID_LBA_RANGE_TYPE					= 0x03,
	NVME_FEATURE_ID_TEMPERATURE_THRESHOLD			= 0x04,
	NVME_FEATURE_ID_ERROR_RECOVERY					= 0x05,
	NVME_FEATURE_ID_VOLATILE_WRITE_CACHE			= 0x06,
	NVME_FEATURE_ID_NUMBER_OF_QUEUE					= 0x07,
	NVME_FEATURE_ID_INTERRUPT_COALESCING			= 0x08,
	NVME_FEATURE_ID_INTERRUPT_VECTOR_CONFIG			= 0x09,
	NVME_FEATURE_ID_WRITE_ATOMICITY_NORMAL			= 0x0A,
	NVME_FEATURE_ID_ASYNCHRONOUS_EVENT_CONFIG		= 0x0B,
	NVME_FEATURE_ID_AUTO_POWER_STATE_TRANSITION		= 0x0C,
	NVME_FEATURE_ID_HOST_MEMORY_BUFFER				= 0x0D,
	NVME_FEATURE_ID_TIMESTAMP						= 0x0E,
	NVME_FEATURE_ID_KEEP_ALIVE_TIMER				= 0x0F,
	NVME_FEATURE_ID_HOST_THERMAL_MANAGEMENT			= 0x10,
	NVME_FEATURE_ID_NON_OPERATIONAL_POWER_CONFIG	= 0x11,

	NVME_FEATURE_ID_SOFTWARE_PROGRESS_MARKER		= 0x80,
	NVME_FEATURE_ID_HOST_ID							= 0x81,
	NVME_FEATURE_ID_RESERVATION_NOTIFICATION_MASK	= 0x82,
	NVME_FEATURE_ID_RESERVATION_PERSISTANCE			= 0x83,

} NVME_FEATURE_ID_E;



// Status Code

typedef enum _NVME_STATUS_CODE_TYPE_E
{
	NVME_STATUS_CODE_TYPE_GENERIC					= 0x00,
	NVME_STATUS_CODE_TYPE_SPECIFIC					= 0x01,
	NVME_STATUS_CODE_TYPE_INTEGRITY					= 0x02,
	NVME_STATUS_CODE_TYPE_VENDOR					= 0x07,
} NVME_STATUS_CODE_TYPE_E;


// Status Code
typedef enum _NVME_SC_GENERIC_E
{
	NVME_SC_GENERIC_SUCCESS							= 0x00,
	NVME_SC_GENERIC_INVALID_COMMAND_OPCODE			= 0x01,
	NVME_SC_GENERIC_INVALID_FIELD_IN_COMMAND		= 0x02,
	NVME_SC_GENERIC_COMMAND_ID_CONFLICT				= 0x03,
	NVME_SC_GENERIC_DATA_TRANSFER_ERROR				= 0x04,
	NVME_SC_GENERIC_ABORTED_DUE_TO_POWER_LOSS		= 0x05,
	NVME_SC_GENERIC_INTERNAL_ERROR					= 0x06,
	NVME_SC_GENERIC_ABORT_REQUESTED					= 0x07,
	NVME_SC_GENERIC_ABORT_DUE_TO_SQ_DELETION		= 0x08,
	NVME_SC_GENERIC_ABORT_DUE_TO_FAIL_FUSE			= 0x09,
	NVME_SC_GENERIC_ABORT_DUE_TO_MISSING_FUSE		= 0x0A,
	NVME_SC_GENERIC_INVALID_NAMESPACE_OR_FORMAT		= 0x0B,
	NVME_SC_GENERIC_COMMAND_SEQUENCE_ERROR			= 0x0C,
	NVME_SC_GENERIC_INVALID_SGL_SEGMENT				= 0x0D,
	NVME_SC_GENERIC_INVALID_NUMBER_OF_SGL			= 0x0E,
	NVME_SC_GENERIC_DATA_SGL_LENGTH_INVALID			= 0x0F,
	NVME_SC_GENERIC_META_SGL_LENGTH_INVALID			= 0x10,
	NVME_SC_GENERIC_SGL_TYPE_INVALID				= 0x11,
	NVME_SC_GENERIC_INVALID_USE_OF_MEMORY			= 0x12,
	NVME_SC_GENERIC_PRP_OFFSET_INVALID				= 0x13,
	NVME_SC_GENERIC_ATOMIC_WRITE_UNIT_EXCEEDED		= 0x14,
	NVME_SC_GENERIC_OPERATION_DENIED				= 0x15,
	NVME_SC_GENERIC_SGL_OFFSET_INVALID				= 0x16,
	NVME_SC_GENERIC_HOST_ID_INVALID_FORMAT			= 0x18,
	NVME_SC_GENERIC_KEEP_ALIVE_TIME_EXPIRED			= 0x19,
	NVME_SC_GENERIC_KEEP_ALIVE_TIME_INVALID			= 0x1A,
	NVME_SC_GENERIC_ABORT_DUE_TO_PREEMPT			= 0x1B,
	NVME_SC_GENERIC_SANITIZE_FAILED					= 0x1C,
	NVME_SC_GENERIC_SANITIZE_IN_PROGRESS			= 0x1D,
	NVME_SC_GENERIC_SGL_DATA_BLOCK_INVALID			= 0x1E,
	NVME_SC_GENERIC_NOT_SUPPORTED_IN_CMB			= 0x1F,

	NVME_SC_GENERIC_LBA_OUT_OF_RANGE				= 0x80,
	NVME_SC_GENERIC_CAPACITY_EXCEEDED				= 0x81,
	NVME_SC_GENERIC_NAMESPACE_NOT_READY				= 0x82,
	NVME_SC_GENERIC_RESERVATION_CONFLICT			= 0x83,
	NVME_SC_GENERIC_FORMAT_IN_PROGRESS				= 0x84,
} NVME_SC_GENERIC_E;



// Status Code
typedef enum _NVME_SC_SPECIFIC_E
{
	NVME_SC_SPECIFIC_COMPLETION_QUEUE_INVALID		= 0x00,
	NVME_SC_SPECIFIC_INVALID_QUEUE_ID				= 0x01,
	NVME_SC_SPECIFIC_INVALID_QUEUE_SIZE				= 0x02,
	NVME_SC_SPECIFIC_ABORT_LIMIT_EXCEEDED			= 0x03,
	NVME_SC_SPECIFIC_ASYNC_LIMIT_EXCEEDED			= 0x05,
	NVME_SC_SPECIFIC_INVALID_FIRMWARE_SLOT			= 0x06,
	NVME_SC_SPECIFIC_INVALID_FIRMWARE_IMAGE			= 0x07,
	NVME_SC_SPECIFIC_INVALID_INTERRUPT_VECTOR		= 0x08,
	NVME_SC_SPECIFIC_INVALID_LOG_PAGE				= 0x09,
	NVME_SC_SPECIFIC_INVALID_FORMAT					= 0x0A,
	NVME_SC_SPECIFIC_FW_REQUIRE_CONVENTIONAL_RESET	= 0x0B,
	NVME_SC_SPECIFIC_INVALID_QUEUE_DELETION			= 0x0C,
	NVME_SC_SPECIFIC_FEATURE_NOT_SAVEABLE			= 0x0D,
	NVME_SC_SPECIFIC_FEATURE_NOT_CHANGEABLE			= 0x0E,
	NVME_SC_SPECIFIC_FEATURE_NOT_NAMESPACE			= 0x0F,
	NVME_SC_SPECIFIC_FW_REQUIRE_NVM_SUB_RESET		= 0x10,
	NVME_SC_SPECIFIC_FW_REQUIRE_RESET				= 0x11,
	NVME_SC_SPECIFIC_FW_REQUIRE_MAX_TIME_VIOLATION	= 0x12,
	NVME_SC_SPECIFIC_FW_ACTIVATION_PROHIBITED		= 0x13,
	NVME_SC_SPECIFIC_OVERLAPPING_RANGE				= 0x14,
	NVME_SC_SPECIFIC_NAMESPACE_OVER_CAPACITY		= 0x15,
	NVME_SC_SPECIFIC_NAMESPACE_ID_UNAVAILABLE		= 0x16,
	NVME_SC_SPECIFIC_NAMESPACE_ALREADY_ATTACHED		= 0x18,
	NVME_SC_SPECIFIC_NAMESPACE_IS_PRIVATE			= 0x19,
	NVME_SC_SPECIFIC_NAMESPACE_NOT_ATTACHED			= 0x1A,
	NVME_SC_SPECIFIC_THIN_PROVISION_NOT_SUPPORTED	= 0x1B,
	NVME_SC_SPECIFIC_CONTROLLER_LIST_INVALID		= 0x1C,
	NVME_SC_SPECIFIC_DEVICE_SELF_TEST_IN_PROGRESS	= 0x1D,
	NVME_SC_SPECIFIC_BOOT_PART_WRITE_PROHIBITED		= 0x1E,
	NVME_SC_SPECIFIC_INVALID_CONTROLLER_ID			= 0x1F,
	NVME_SC_SPECIFIC_INVALID_SECONDARY_CONTROLLER	= 0x20,
	NVME_SC_SPECIFIC_INVALID_NUMBER_OF_CONTROLLER	= 0x21,
	NVME_SC_SPECIFIC_INVALID_RESOURCE_ID			= 0x22,

	NVME_SC_SPECIFIC_CONFLICT_ATTRIBUTE				= 0x80,
	NVME_SC_SPECIFIC_INVALID_PROTECT_INFOMATION		= 0x81,
	NVME_SC_SPECIFIC_WRITE_TO_READ_ONLY_RANGE		= 0x82,
} NVME_SC_SPECIFIC_E;


// Status Code
typedef enum _NVME_SC_INTEGRITY_E
{
	NVME_SC_INTEGRITY_WRITE_FAULT					= 0x80,
	NVME_SC_INTEGRITY_UNRECOVERED_READ_ERROR		= 0x81,
	NVME_SC_INTEGRITY_END_TO_END_GUARD_ERROR		= 0x82,
	NVME_SC_INTEGRITY_END_TO_END_APP_TAG_ERROR		= 0x83,
	NVME_SC_INTEGRITY_END_TO_END_REFER_TAG_ERROR	= 0x84,
	NVME_SC_INTEGRITY_COMPARE_FAILURE				= 0x85,
	NVME_SC_INTEGRITY_ACCESS_DENIED					= 0x86,
	NVME_SC_INTEGRITY_UNWRITTEN_LOGICAL_BLOCK		= 0x87,

} NVME_SC_INTEGRITY_E;


typedef enum _NVME_LOG_PAGE_ID_E
{
	NVME_LOG_PAGE_ID_ERROR_INFORMATION					= 0x01,
	NVME_LOG_PAGE_ID_SMART_HEALTH_INFORMATION			= 0x02,
	NVME_LOG_PAGE_ID_FIRMWARE_SLOT_INFORMATION			= 0x03,
	NVME_LOG_PAGE_ID_CHANGED_NAMESPACE_LIST				= 0x04,
	NVME_LOG_PAGE_ID_COMMANDS_SUPPORTED_AND_EFFECTS		= 0x05,
	NVME_LOG_PAGE_ID_DEVICE_SELF_TEST					= 0x06,
	NVME_LOG_PAGE_ID_TELEMETRY_HOST_INITIATED			= 0x07,
	NVME_LOG_PAGE_ID_TELEMETRY_CONTROLLER_INITIATED		= 0x08,

	NVME_LOG_PAGE_ID_DISCOVERY							= 0x70,

	NVME_LOG_PAGE_ID_RESERVATION_NOTIFICATION			= 0x80,
	NVME_LOG_PAGE_ID_SANITIZE_STATUS					= 0x81,
} NVME_LOG_PAGE_ID_E;

typedef enum _NVME_SQ_IDENTIFY_CNS_E
{
	NVME_SQ_IDENTIFY_CNS_NAMESPACE_DATA						= 0x00,
	NVME_SQ_IDENTIFY_CNS_CONTOLLER_DATA						= 0x01,
	NVME_SQ_IDENTIFY_CNS_NAMESPACE_ACTIVE_LIST				= 0x02,
	NVME_SQ_IDENTIFY_CNS_NAMESPACE_IDENTIFICATION			= 0x03,
	NVME_SQ_IDENTIFY_CNS_NAMESPACE_ALLOCATED_LIST			= 0x10,
	NVME_SQ_IDENTIFY_CNS_NAMESPACE_DATA_STRUCTURE			= 0x11,
	NVME_SQ_IDENTIFY_CNS_CONTROLLER_LIST_NAMESPACE_ATTACHED = 0x12,
	NVME_SQ_IDENTIFY_CNS_CONTROLLER_LIST_ALL				= 0x13,
	NVME_SQ_IDENTIFY_CNS_CONTROLLER_PRIMARY_CAPABILTIES		= 0x14,
	NVME_SQ_IDENTIFY_CNS_CONTROLLER_SECONDARY_LIST			= 0x15,
} NVME_SQ_IDENTIFY_CNS_E;

#endif	// __NVME_STRUCT_H__

