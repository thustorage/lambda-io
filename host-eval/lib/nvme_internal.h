/**
 * @file nvme_internal.h
 * @author kukdh1 <kukdh1@gmail.com>
 * @brief NVMe library header file for internal codes.
 * @see linux/nvme_ioctl.h of nvme-cli
 */

#pragma once

#ifndef _NVME_LOW_LIB_INTERNAL_H_
#define _NVME_LOW_LIB_INTERNAL_H_

#include <libnvme.h>

typedef struct _nvme_user_io {
  uint8_t opcode;
  uint8_t flags;
  uint16_t control;
  uint16_t nblocks;
  uint16_t rsvd;
  uint64_t metadata;
  uint64_t addr;
  uint64_t slba;
  uint32_t dsmgmt;
  uint32_t reftag;
  uint16_t apptag;
  uint16_t appmask;
} nvme_user_io;

typedef struct _nvme_passthru_cmd {
  uint8_t opcode;
  uint8_t flags;
  uint16_t rsvd1;
  uint32_t nsid;
  uint32_t cdw2; // reserved
  uint32_t cdw3; // reserved
  uint64_t metadata; // metadata pointer
  uint64_t addr; //
  uint32_t metadata_len;
  uint32_t data_len;
  uint32_t cdw10;
  uint32_t cdw11;
  uint32_t cdw12;
  uint32_t cdw13;
  uint32_t cdw14;
  uint32_t cdw15;
  uint32_t timeout_ms;
  uint32_t result;
} nvme_passthru_cmd;

#ifdef _WIN32
# error "Not supported yet"
#elif __APPLE__
# error "Not supported yet"
#else

# define NVME_IOCTL_ID                _IO('N', 0x40)
# define NVME_IOCTL_ADMIN_CMD       _IOWR('N', 0x41, nvme_passthru_cmd)
# define NVME_IOCTL_SUBMIT_IO        _IOW('N', 0x42, nvme_user_io)
# define NVME_IOCTL_IO_CMD          _IOWR('N', 0x43, nvme_passthru_cmd)
# define NVME_IOCTL_RESET             _IO('N', 0x44)
# define NVME_IOCTL_SUBSYS_RESET      _IO('N', 0x45)
# define NVME_IOCTL_RESCAN            _IO('N', 0x46)

#endif

typedef struct _nvme_passthru_data {
  void *ptr;
  uint32_t size;
} nvme_passthru_data;

nvme_error nvme_free(nvme_passthru_data *data);
nvme_error nvme_get_ptr(nvme_passthru_data *data, void **ptr);
nvme_error nvme_submit_ioctl(nvme_handle dev, int ioctl_cmd, nvme_cmd *cmd, nvme_metadata metadata, nvme_data data);

#endif
