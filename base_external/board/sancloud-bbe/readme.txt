SanCloud BBE (BeagleBone Enhanced)
Texas Instuments AM335x Evaluation Module (TMDXEVM3358)

Description
===========

This configuration will build a complete image for the 
SanCloud BBE

How to build it
===============

Select the default configuration for the target:
$ make sancloud_defconfig

Optional: modify the configuration:
$ make menuconfig

Build:
$ make

Result of the build
===================
output/images/
+-- am335x-sancloud-bbe.dtb
+-- am335x-sancloud-bbe-extended-wifi.dtb
+-- am335x-sancloud-bbe-lite.dtb
+-- boot.vfat
+-- MLO
+-- rootfs.ext2
+-- rootfs.ext4
+-- rootfs.tar
+-- sdcard.img
+-- u-boot.img
+-- uEnv.txt
+-- zImage

To copy the image file to the sdcard use dd:
$ dd if=output/images/sdcard.img of=/dev/XXX

Tested hardware
===============

SanCloud BBE (BeagleBone Enhanced)

2024, Helder Santana <helder.bs.santana@gmail.com>

