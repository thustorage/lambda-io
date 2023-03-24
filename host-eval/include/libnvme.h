/**
 * @file nvme_low_lib.h
 * @author kukdh1 <kukdh1@gmail.com>
 * @brief NVMe library main header file.
 */

#pragma once

#ifndef _NVME_LOW_LIB_H_
#define _NVME_LOW_LIB_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <inttypes.h>

#ifdef _WIN32
# error "Not supported yet"
#elif __APPLE__
# error "Not supported yet"
#else

#include <errno.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <unistd.h>

/**
 * @brief NVMe device handle.
 */
typedef int       nvme_handle;

/**
 * @brief NVMe library error code.
 */
typedef int       nvme_error;

#endif

/**
 * @brief NVMe metadata pointer.
 */
typedef void *    nvme_metadata;

/**
 * @brief NVMe data pointer.
 */
typedef void *    nvme_data;

/**
 * @brief NVMe command structure.
 */
typedef struct _nvme_cmd {
  uint32_t cdw0;    /**< Command DWORD 0 */
  uint32_t nsid;    /**< Namespace Identifier */
  uint32_t cdw10;   /**< Command DWORD 10 */
  uint32_t cdw11;   /**< Command DWORD 11 */
  uint32_t cdw12;   /**< Command DWORD 12 */
  uint32_t cdw13;   /**< Command DWORD 13 */
  uint32_t cdw14;   /**< Command DWORD 14 */
  uint32_t cdw15;   /**< Command DWORD 15 */

  uint32_t timeout_ms;  /**< Timeout */
  uint32_t result;      /**< Command result */
} nvme_cmd;

/**
 * @brief NVMe status codes.
 * @see linux/nvme.h of nvme-cli
 */
enum {
  NVME_SC_SUCCESS                   = 0x0,
  NVME_SC_INVALID_OPCODE            = 0x1,
  NVME_SC_INVALID_FIELD             = 0x2,
  NVME_SC_CMDID_CONFLICT            = 0x3,
  NVME_SC_DATA_XFER_ERROR           = 0x4,
  NVME_SC_POWER_LOSS                = 0x5,
  NVME_SC_INTERNAL                  = 0x6,
  NVME_SC_ABORT_REQ                 = 0x7,
  NVME_SC_ABORT_QUEUE               = 0x8,
  NVME_SC_FUSED_FAIL                = 0x9,
  NVME_SC_FUSED_MISSING             = 0xa,
  NVME_SC_INVALID_NS                = 0xb,
  NVME_SC_CMD_SEQ_ERROR             = 0xc,
  NVME_SC_SGL_INVALID_LAST          = 0xd,
  NVME_SC_SGL_INVALID_COUNT         = 0xe,
  NVME_SC_SGL_INVALID_DATA          = 0xf,
  NVME_SC_SGL_INVALID_METADATA      = 0x10,
  NVME_SC_SGL_INVALID_TYPE          = 0x11,

  NVME_SC_SGL_INVALID_OFFSET        = 0x16,
  NVME_SC_SGL_INVALID_SUBTYPE       = 0x17,

  NVME_SC_LBA_RANGE                 = 0x80,
  NVME_SC_CAP_EXCEEDED              = 0x81,
  NVME_SC_NS_NOT_READY              = 0x82,
  NVME_SC_RESERVATION_CONFLICT      = 0x83,

  NVME_SC_CQ_INVALID                = 0x100,
  NVME_SC_QID_INVALID               = 0x101,
  NVME_SC_QUEUE_SIZE                = 0x102,
  NVME_SC_ABORT_LIMIT               = 0x103,
  NVME_SC_ABORT_MISSING             = 0x104,
  NVME_SC_ASYNC_LIMIT               = 0x105,
  NVME_SC_FIRMWARE_SLOT             = 0x106,
  NVME_SC_FIRMWARE_IMAGE            = 0x107,
  NVME_SC_INVALID_VECTOR            = 0x108,
  NVME_SC_INVALID_LOG_PAGE          = 0x109,
  NVME_SC_INVALID_FORMAT            = 0x10a,
  NVME_SC_FW_NEEDS_CONV_RESET       = 0x10b,
  NVME_SC_INVALID_QUEUE             = 0x10c,
  NVME_SC_FEATURE_NOT_SAVEABLE      = 0x10d,
  NVME_SC_FEATURE_NOT_CHANGEABLE    = 0x10e,
  NVME_SC_FEATURE_NOT_PER_NS        = 0x10f,
  NVME_SC_FW_NEEDS_SUBSYS_RESET     = 0x110,
  NVME_SC_FW_NEEDS_RESET            = 0x111,
  NVME_SC_FW_NEEDS_MAX_TIME         = 0x112,
  NVME_SC_FW_ACIVATE_PROHIBITED     = 0x113,
  NVME_SC_OVERLAPPING_RANGE         = 0x114,
  NVME_SC_NS_INSUFFICENT_CAP        = 0x115,
  NVME_SC_NS_ID_UNAVAILABLE         = 0x116,
  NVME_SC_NS_ALREADY_ATTACHED       = 0x118,
  NVME_SC_NS_IS_PRIVATE             = 0x119,
  NVME_SC_NS_NOT_ATTACHED           = 0x11a,
  NVME_SC_THIN_PROV_NOT_SUPP        = 0x11b,
  NVME_SC_CTRL_LIST_INVALID         = 0x11c,

  NVME_SC_BAD_ATTRIBUTES            = 0x180,
  NVME_SC_INVALID_PI                = 0x181,
  NVME_SC_READ_ONLY                 = 0x182,

  NVME_SC_CONNECT_FORMAT            = 0x180,
  NVME_SC_CONNECT_CTRL_BUSY         = 0x181,
  NVME_SC_CONNECT_INVALID_PARAM     = 0x182,
  NVME_SC_CONNECT_RESTART_DISC      = 0x183,
  NVME_SC_CONNECT_INVALID_HOST      = 0x184,

  NVME_SC_DISCOVERY_RESTART         = 0x190,
  NVME_SC_AUTH_REQUIRED             = 0x191,

  NVME_SC_WRITE_FAULT               = 0x280,
  NVME_SC_READ_ERROR                = 0x281,
  NVME_SC_GUARD_CHECK               = 0x282,
  NVME_SC_APPTAG_CHECK              = 0x283,
  NVME_SC_REFTAG_CHECK              = 0x284,
  NVME_SC_COMPARE_FAILED            = 0x285,
  NVME_SC_ACCESS_DENIED             = 0x286,
  NVME_SC_UNWRITTEN_BLOCK           = 0x287,

  NVME_SC_DNR                       = 0x4000,
};

enum CommandOpCode {
    NDP_DOWNLOAD                    = 0x89,
    NDP_PUT_DATA                    = 0x81,
    NDP_GET_DATA                    = 0x82,
    NDP_PUT_SIZE                    = 0x85,
    NDP_GET_SIZE                    = 0x86
};

#ifdef __cplusplus
extern "C" {
#endif

/**
 * @brief Open the NVMe device.
 *
 * Open the NVMe device and return its handle.
 * On the linux-like system, provide devicepath as /dev/nvme0n1
 * (for block device) or /dev/nvme0 (for charaacter device)
 * @code
 * nvme_handle handle;
 * nvme_error ret;
 *
 * ret = nvme_open(&handle, "/dev/nvme0");
 * @endcode
 *
 * @param dev Pointer to nvme_handle.
 * @param devicepath Path of NVMe device.
 * @return Return nvme_error.
 */
nvme_error nvme_open(nvme_handle *dev, const char *devicepath);

/**
 * @brief Close the NVMe device.
 *
 * Close the NVMe device with its handle.
 * @code
 * nvme_handle handle;
 * nvme_error ret;
 *
 * ret = nvme_open(&handle, "/dev/nvme0");
 * ret = nvme_close(handle);
 * @endcode
 *
 * @param dev Pointer to nvme_handle.
 * @return Return nvme_error.
 */
nvme_error nvme_close(nvme_handle dev);

/**
 * @brief Submit admin command to NVMe device.
 *
 * Submit admin command to NVMe device.
 * Fill the nvme_cmd structure and allocate metadata and/or data.
 * If no metadata/data present, just pass NULL.
 *
 * @param dev Pointer to nvme_handle.
 * @param cmd Pointer to nvme_cmd.
 * @param metadata Pointer to nvme_metadata.
 * @param data Pointer to nvme_data.
 * @return Return nvme_error.
 */
nvme_error nvme_submit_admin(nvme_handle dev, nvme_cmd *cmd, nvme_metadata metadata, nvme_data data);

/**
 * @brief Submit io command to NVMe device.
 *
 * Submit io command to NVMe device.
 * Fill the nvme_cmd structure and allocate metadata and/or data.
 * If no metadata/data present, just pass NULL.
 *
 * @param dev Pointer to nvme_handle.
 * @param cmd Pointer to nvme_cmd.
 * @param metadata Pointer to nvme_metadata.
 * @param data Pointer to nvme_data.
 * @return Return nvme_error.
 */
nvme_error nvme_submit_io(nvme_handle dev, nvme_cmd *cmd, nvme_metadata metadata, nvme_data data);

/**
 * @brief Submit rescan command to NVMe device.
 *
 * Submit rescan command to NVMe device.
 * Driver will issue identify controller and scan namespaces
 *
 * @param dev Pointer to nvme_handle.
 * @return Return nvme_error.
 */
nvme_error nvme_rescan(nvme_handle dev);

/**
 * @brief Allocate metadata.
 *
 * Allocate metadata.
 * @code
 * nvme_metadata metadata;
 * nvme_error ret;
 *
 * ret = nvme_alloc_metadata(&metadata, 4096);
 * @endcode
 *
 * @param metadata Double pointer to nvme_metadata.
 * @param size Size of metadata to allocate.
 * @return Return nvme_error.
 */
nvme_error nvme_alloc_metadata(nvme_metadata *metadata, uint32_t size);

/**
 * @brief Allocate data.
 *
 * Allocate data.
 * @code
 * nvme_data data;
 * nvme_error ret;
 *
 * ret = nvme_alloc_data(&data, 4096);
 * @endcode
 *
 * @param data Double pointer to nvme_data.
 * @param size Size of metadata to allocate.
 * @return Return nvme_error.
 */
nvme_error nvme_alloc_data(nvme_data *data, uint32_t size);

/**
 * @brief Free metadata.
 *
 * Free metadata.
 * @code
 * nvme_data metadata;
 * nvme_error ret;
 *
 * ret = nvme_alloc_metadata(&metadata, 4096);
 * ret = nvme_free_metadata(metadata);
 * @endcode
 *
 * @param data Pointer to nvme_data.
 * @return Return nvme_error.
 */
nvme_error nvme_free_metadata(nvme_metadata metadata);

/**
 * @brief Free data.
 *
 * Free data.
 * @code
 * nvme_data data;
 * nvme_error ret;
 *
 * ret = nvme_alloc_data(&data, 4096);
 * ret = nvme_free_data(data);
 * @endcode
 *
 * @param data Pointer to nvme_data.
 * @return Return nvme_error.
 */
nvme_error nvme_free_data(nvme_data data);

/**
 * @brief Get metadata pointer.
 *
 * Get metadata pointer. You can read/write data using this pointer.
 * @code
 * nvme_metadata metadata;
 * nvme_error ret;
 * void *ptr;
 *
 * ret = nvme_alloc_metadata(&metadata, 4096);
 * ret = nvme_get_metadata_pointer(metadata, &ptr);
 * @endcode
 *
 * @warning Do not free the pointer;
 *
 * @param metadata Pointer to nvme_metadata.
 * @param ptr Double pointer to store pointer.
 * @return Return nvme_error.
 */
nvme_error nvme_get_metadata_pointer(nvme_metadata metadata, void **ptr);

/**
 * @brief Get data pointer.
 *
 * Get data pointer. You can read/write data using this pointer.
 * @code
 * nvme_data data;
 * nvme_error ret;
 * void *ptr;
 *
 * ret = nvme_alloc_data(&data, 4096);
 * ret = nvme_get_data_pointer(data, &ptr);
 * @endcode
 *
 * @warning Do not free the pointer;
 *
 * @param data Pointer to nvme_data.
 * @param ptr Double pointer to store pointer.
 * @return Return nvme_error.
 */
nvme_error nvme_get_data_pointer(nvme_data data, void **ptr);

/**
 * @brief Get nvme_error description.
 *
 * Get description of nvme_error. On the linux-like system, same as strerror.
 *
 * @param err nvme_error.
 * @return Return string.
 */
char *nvme_get_error_message(nvme_error err);

#ifdef __cplusplus
}
#endif

#endif
