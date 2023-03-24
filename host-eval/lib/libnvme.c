#include "nvme_internal.h"

nvme_error nvme_open(nvme_handle *pdev, const char *devicepath) {
  int err, fd;
  struct stat nvme_stat;

  // Open
  fd = open(devicepath, O_RDONLY);
  err = fd;

  if (fd >= 0) {
    err = fstat(fd, &nvme_stat);

    if (err >= 0) {
      if (!S_ISCHR(nvme_stat.st_mode) && !S_ISBLK(nvme_stat.st_mode)) {
        return (nvme_error)-ENODEV;
      }

      *pdev = fd;

      return 0;
    }
    else {
      close(fd);
    }
  }

  return (nvme_error)err;
}

nvme_error nvme_close(nvme_handle dev) {
  return (nvme_error)close((int)dev);
}

nvme_error nvme_submit_admin(nvme_handle dev, nvme_cmd *cmd, nvme_metadata metadata, nvme_data data) {
  return nvme_submit_ioctl(dev, NVME_IOCTL_ADMIN_CMD, cmd, metadata, data);
}

nvme_error nvme_submit_io(nvme_handle dev, nvme_cmd *cmd, nvme_metadata metadata, nvme_data data) {
  return nvme_submit_ioctl(dev, NVME_IOCTL_IO_CMD, cmd, metadata, data);
}

nvme_error nvme_rescan(nvme_handle dev) {
  int err = ioctl((int)dev, NVME_IOCTL_RESCAN, NULL);

  if (err < 0) {
    err = errno;
  }

  return (nvme_error)err;
}

nvme_error nvme_alloc_metadata(nvme_metadata *metadata, uint32_t size) {
  nvme_passthru_data *ptr;
  int err = 0;

  ptr = (nvme_passthru_data *)calloc(1, sizeof(nvme_passthru_data));

  if (ptr) {
    if (size == 0) {
      err = -EINVAL;
    }
    else {
      ptr->ptr = calloc(size, 1);

      if (ptr->ptr == NULL) {
        err = -ENOMEM;
      }
      else {
      ptr->size = size;
        *metadata = (nvme_metadata)ptr;
      }
    }
  }
  else {
    err = -ENOMEM;
  }

  return (nvme_error)err;
}

nvme_error nvme_alloc_data(nvme_data *data, uint32_t size) {
  nvme_passthru_data *ptr;
  int err = 0;

  ptr = (nvme_passthru_data *)calloc(1, sizeof(nvme_passthru_data));

  if (ptr) {
    if (size == 0) {
      err = -EINVAL;
    }
    else {
      if (posix_memalign(&(ptr->ptr), getpagesize(), size)) {
        err = -ENOMEM;
      }
      else {
        memset(ptr->ptr, 0, size);
        ptr->size = size;
        *data = (nvme_data)ptr;
      }
    }
  }
  else {
    err = -ENOMEM;
  }

  return (nvme_error)err;
}

nvme_error nvme_free_metadata(nvme_metadata metadata) {
  return nvme_free((nvme_passthru_data *)metadata);
}

nvme_error nvme_free_data(nvme_data data) {
  return nvme_free((nvme_passthru_data *)data);
}

nvme_error nvme_get_metadata_pointer(nvme_metadata metadata, void **ptr) {
  return nvme_get_ptr((nvme_passthru_data *)metadata, ptr);
}

nvme_error nvme_get_data_pointer(nvme_data data, void **ptr) {
  return nvme_get_ptr((nvme_passthru_data *)data, ptr);
}

char *nvme_get_error_message(nvme_error err) {
  // Linux errno
  if (err < 0) {
    return strerror((int)-err);
  }
  // NVMe status
  else {
    switch ((int)err & 0x3ff) {
      case NVME_SC_SUCCESS:                   return "Success";
      case NVME_SC_INVALID_OPCODE:            return "Invalid command opcode";
      case NVME_SC_INVALID_FIELD:             return "Invalid field";
      case NVME_SC_CMDID_CONFLICT:            return "Command ID conflict";
      case NVME_SC_DATA_XFER_ERROR:           return "Data transfer error";
      case NVME_SC_POWER_LOSS:                return "Aborted due to power loss";
      case NVME_SC_INTERNAL:                  return "Internal error";
      case NVME_SC_ABORT_REQ:                 return "Abort requested";
      case NVME_SC_ABORT_QUEUE:               return "Aborted due to SQ deletion";
      case NVME_SC_FUSED_FAIL:                return "Aborted due to failed fused command";
      case NVME_SC_FUSED_MISSING:             return "Aborted due to missing fused command";
      case NVME_SC_INVALID_NS:                return "Invalid namespace or format";
      case NVME_SC_CMD_SEQ_ERROR:             return "Command sequence error";
      case NVME_SC_LBA_RANGE:                 return "LBA out of range";
      case NVME_SC_CAP_EXCEEDED:              return "Capacity exceeded";
      case NVME_SC_NS_NOT_READY:              return "Namespace not ready";
      case NVME_SC_RESERVATION_CONFLICT:      return "Reservation conflict";
      case NVME_SC_CQ_INVALID:                return "Invalid CQ";
      case NVME_SC_QID_INVALID:               return "Invalid QID";
      case NVME_SC_QUEUE_SIZE:                return "Invalid queue size";
      case NVME_SC_ABORT_LIMIT:               return "Abort command limit exceeded";
      case NVME_SC_ABORT_MISSING:             return "Abort missing";
      case NVME_SC_ASYNC_LIMIT:               return "Asynchronous event request limit exceeded";
      case NVME_SC_FIRMWARE_SLOT:             return "Invalid firmware slot";
      case NVME_SC_FIRMWARE_IMAGE:            return "Invalid firmware image";
      case NVME_SC_INVALID_VECTOR:            return "Invalid interrupt vector";
      case NVME_SC_INVALID_LOG_PAGE:          return "Invalid log page";
      case NVME_SC_INVALID_FORMAT:            return "Invalid format";
      case NVME_SC_FW_NEEDS_CONV_RESET:       return "Firmware activation requires conventional reset";
      case NVME_SC_INVALID_QUEUE:             return "Invalid queue deletion";
      case NVME_SC_FEATURE_NOT_SAVEABLE:      return "Feature not saveable";
      case NVME_SC_FEATURE_NOT_CHANGEABLE:    return "Feature not changeable";
      case NVME_SC_FEATURE_NOT_PER_NS:        return "Feature not namespace specific";
      case NVME_SC_FW_NEEDS_SUBSYS_RESET:     return "Firmware activation requires NVM Subsystem reset";
      case NVME_SC_FW_NEEDS_RESET:            return "Firmware activation requires reset";
      case NVME_SC_FW_NEEDS_MAX_TIME:         return "Firmware activation requires maximum time violation";
      case NVME_SC_FW_ACIVATE_PROHIBITED:     return "Firmware activation prohibited";
      case NVME_SC_OVERLAPPING_RANGE:         return "Overlapping range";
      case NVME_SC_NS_INSUFFICENT_CAP:        return "Namespace insufficient capacity";
      case NVME_SC_NS_ID_UNAVAILABLE:         return "Namespace ID unavailable";
      case NVME_SC_NS_ALREADY_ATTACHED:       return "Namespace already attached";
      case NVME_SC_NS_IS_PRIVATE:             return "Namespace is private";
      case NVME_SC_NS_NOT_ATTACHED:           return "Namespace not attched";
      case NVME_SC_THIN_PROV_NOT_SUPP:        return "Thin provisioning not supported";
      case NVME_SC_CTRL_LIST_INVALID:         return "Controller list invalid";
      case NVME_SC_BAD_ATTRIBUTES:            return "Conflicting attributes";
      case NVME_SC_WRITE_FAULT:               return "Write fault";
      case NVME_SC_READ_ERROR:                return "Read error";
      case NVME_SC_GUARD_CHECK:               return "End-to-end guard check error";
      case NVME_SC_APPTAG_CHECK:              return "End-to-end application tag check error";
      case NVME_SC_REFTAG_CHECK:              return "End-to-end reference tag check error";
      case NVME_SC_COMPARE_FAILED:            return "Compare failed";
      case NVME_SC_ACCESS_DENIED:             return "Access denied";
      case NVME_SC_UNWRITTEN_BLOCK:           return "Deallocated or unwritten logical block";
      default:                                return "Unknown";
    }
  }
}

nvme_error nvme_free(nvme_passthru_data *data) {
  int err = 0;

  if (data->ptr) {
    free(data->ptr);
    free(data);
  }
  else {
    err = -EINVAL;
  }

  return (nvme_error)err;
}

nvme_error nvme_get_ptr(nvme_passthru_data *data, void **ptr) {
  int err = 0;

  if (data && ptr) {
    *ptr = data->ptr;
  }
  else {
    err = -EINVAL;
  }

  return (nvme_error)err;
}

nvme_error nvme_submit_ioctl(nvme_handle dev, int ioctl_cmd, nvme_cmd *cmd, nvme_metadata metadata, nvme_data data) {
  nvme_passthru_data *mptr = (nvme_passthru_data *)metadata;
  nvme_passthru_data *dptr = (nvme_passthru_data *)data;
  nvme_passthru_cmd passthru_cmd = {
    .opcode         = (uint8_t)(cmd->cdw0 & 0xFF),
    .flags          = (uint8_t)((cmd->cdw0 & 0xFF00) >> 8),
    .rsvd1          = 0,
    .nsid           = cmd->nsid,
    .cdw2           = 0,
    .cdw3           = 0,
    .metadata       = 0,
    .metadata_len   = 0,
    .addr           = 0,
    .data_len       = 0,
    .cdw10          = cmd->cdw10,
    .cdw11          = cmd->cdw11,
    .cdw12          = cmd->cdw12,
    .cdw13          = cmd->cdw13,
    .cdw14          = cmd->cdw14,
    .cdw15          = cmd->cdw15,
    .timeout_ms     = cmd->timeout_ms,
    .result         = cmd->result
  };

//  printf("opcode=0x%x, flags=0x%x\n", passthru_cmd.opcode, passthru_cmd.flags);

  if (mptr) {
    passthru_cmd.metadata       = (uint64_t)mptr->ptr;
    passthru_cmd.metadata_len   = mptr->size;
  }
  if (dptr) {
    passthru_cmd.addr           = (uint64_t)dptr->ptr;
    passthru_cmd.data_len       = dptr->size;
  }

  int err = ioctl((int)dev, ioctl_cmd, &passthru_cmd);

  if (err < 0) {
    err = errno;
  }
  else {
    cmd->result = passthru_cmd.result;
  }

  return (nvme_error)err;
}
