# Device hardware
- `vivado-project.zip`: the vivado project of DaisyPlus OpenSSD. We port it from [OpenExpress](https://openexpress.camelab.org/) and fix some bugs.
- `rootfs.tar.gz`: the on-device Linux rootfs. You should decompress it to the rootfs partition of the SD card. We split it into two files, `rootfs.tar.gz.partaa` and `rootfs.tar.gz.partab`, due to the Github's limitation of the file size. Use `cat rootfs.tar.gz.part* > rootfs.tar.gz` to merge and restore the file.
- `BOOT.BIN` and `image.ub`: boot files. You should place them into the BOOT partition of the SD card.

The only difference between Daisy and DaisyPlus OpenSSD is their DIMM slots. Please pay attention to all the parts about the DIMM slots in the block design, the address mapping, the device tree, etc.

If you are new to porting PetaLinux to Daisy/DaisyPlus OpenSSD, please check the [official manual](https://github.com/CRZ-Technology/OpenSSD-OpenChannelSSD) for more detailed steps.
