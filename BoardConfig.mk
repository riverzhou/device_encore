#==========================================================================

#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Target information
# Processor
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
#TARGET_CPU_SMP := false
ARCH_ARM_HAVE_ARMV7A := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mcpu=cortex-a8 -mfpu=neon 
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mcpu=cortex-a8 -mfpu=neon 
TARGET_arm_CFLAGS := -O2 -fomit-frame-pointer -fstrict-aliasing -funswitch-loops fmodulo-sched -fmodulo-sched-allow-regmoves
TARGET_thumb_CFLAGS := -mthumb -Os -fomit-frame-pointer -fstrict-aliasing

# Kernel
TARGET_NO_BOOTLOADER := false
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := false
BOARD_USES_GENERIC_AUDIO := false
USE_CAMERA_STUB := true
#BOARD_HAVE_BLUETOOTH := true
TARGET_NO_RADIOIMAGE := true
BOARD_HAVE_FAKE_GPS := true

BOARD_KERNEL_BASE := 0x20000000
BOARD_PAGE_SIZE := 0x00000800
BOARD_KERNEL_CMDLINE := no_console_suspend=1 msmsdcc_sdioirq=1 wire.search_count=5
TARGET_BOARD_PLATFORM := omap3
TARGET_BOOTLOADER_BOARD_NAME := encore
#TARGET_BOARD_INFO_FILE := 

# Kernel Build
#TARGET_PREBUILT_KERNEL := device/bn/encore/kernel
#TARGET_KERNEL_CONFIG := encore_defconfig
TARGET_KERNEL_CONFIG := river_defconfig
#TARGET_KERNEL_SOURCE := kernel/bn/encore

WLAN_MODULES:
	make clean -C hardware/ti/wlan/mac80211/compat_wl12xx
	make -j4 -C hardware/ti/wlan/mac80211/compat_wl12xx KERNEL_DIR=$(KERNEL_OUT) KLIB=$(KERNEL_OUT) KLIB_BUILD=$(KERNEL_OUT) ARCH=arm CROSS_COMPILE="arm-eabi-"
	mv hardware/ti/wlan/mac80211/compat_wl12xx/compat/compat.ko $(KERNEL_MODULES_OUT)
	mv hardware/ti/wlan/mac80211/compat_wl12xx/net/mac80211/mac80211.ko $(KERNEL_MODULES_OUT)
	mv hardware/ti/wlan/mac80211/compat_wl12xx/net/wireless/cfg80211.ko $(KERNEL_MODULES_OUT)
	mv hardware/ti/wlan/mac80211/compat_wl12xx/drivers/net/wireless/wl12xx/wl12xx.ko $(KERNEL_MODULES_OUT)
	mv hardware/ti/wlan/mac80211/compat_wl12xx/drivers/net/wireless/wl12xx/wl12xx_spi.ko $(KERNEL_MODULES_OUT)
	mv hardware/ti/wlan/mac80211/compat_wl12xx/drivers/net/wireless/wl12xx/wl12xx_sdio.ko $(KERNEL_MODULES_OUT)

# KERNEL_OUT
TARGET_KERNEL_MODULES := WLAN_MODULES

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 461942784
BOARD_USERDATAIMAGE_PARTITION_SIZE := 987648000
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_VOLD_MAX_PARTITIONS := 32
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"
TARGET_RECOVERY_PRE_COMMAND := "dd if=/dev/zero of=/rom/bcb bs=64 count=1 > /dev/null 2>&1 ; echo 'recovery' >> /rom/bcb ; sync"

BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk0p8
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk0p8

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_CUSTOM_BOOTIMG_MK := device/bn/encore/uboot-bootimg.mk
TARGET_BOOTLOADER_IS_2ND := true
BOARD_USES_UBOOT := true

#TARGET_PROVIDES_INIT_RC := true

# Connectivity - Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
PRODUCT_WIRELESS_TOOLS           := true
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_WLAN_DEVICE                := wl12xx_mac80211
BOARD_SOFTAP_DEVICE              := wl12xx_mac80211
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wl12xx_sdio.ko"
WIFI_DRIVER_MODULE_NAME          := "wl12xx_sdio"
WIFI_FIRMWARE_LOADER             := ""
COMMON_GLOBAL_CFLAGS 		 += -DUSES_TI_MAC80211

# Graphics
BOARD_EGL_CFG := device/bn/encore/egl.cfg
#USE_OPENGL_RENDERER := true
#Do not use hardware renderer anymore. It's no useful.

# OMAP3 ENHANCE
TARGET_USE_OMAP3_BIONIC_OPTIMIZATION := true
BOARD_USE_OMAP3_AV_ENHANCE := true

# MultiMedia defines
BOARD_USES_TI_OMAP_MODEM_AUDIO := false
BOARD_HAS_NO_MISC_PARTITION := true
BUILD_WITH_ALSA_UTILS := true
BOARD_USES_ALSA_AUDIO := true

# Misc.
BOARD_NEEDS_CUTILS_LOG := true
#BOARD_USES_SECURE_SERVICES := true

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=0 \
    ro.debuggable=1 \
    persist.sys.usb.config=mass_storage,adb \

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# OTA Packaging
TARGET_PROVIDES_RELEASETOOLS              := true
TARGET_CUSTOM_RELEASETOOL                 := device/bn/encore/releasetools/squisher
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/bn/encore/releasetools/encore_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := device/bn/encore/releasetools/encore_img_from_target_files

