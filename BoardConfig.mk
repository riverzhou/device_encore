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

# Board Setting
TARGET_CPU_ABI                          := armeabi-v7a
TARGET_CPU_ABI2                         := armeabi
ARCH_ARM_HAVE_ARMV7A                    := true
TARGET_ARCH_VARIANT                     := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER              := true

TARGET_GLOBAL_CFLAGS                    += -mtune=cortex-a8 -mcpu=cortex-a8 -mfpu=neon
TARGET_GLOBAL_CPPFLAGS                  += -mtune=cortex-a8 -mcpu=cortex-a8 -mfpu=neon

TARGET_BOARD_PLATFORM                   := omap3
TARGET_BOOTLOADER_BOARD_NAME            := encore
BOARD_USES_GENERIC_AUDIO                := false
BOARD_HAVE_BLUETOOTH                    := false
BOARD_HAVE_FAKE_GPS                     := true
USE_CAMERA_STUB                         := true
#TARGET_PROVIDES_INIT_RC                := true

BOARD_EGL_CFG 				:= device/bn/encore/egl.cfg
USE_OPENGL_RENDERER			:= true

TARGET_NO_BOOTLOADER                    := true
TARGET_NO_KERNEL                        := true
TARGET_NO_RADIOIMAGE                    := true
TARGET_NO_RECOVERY                      := true
TARGET_NO_RADIOIMAGE                    := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 		:= true
BOARD_SYSTEMIMAGE_PARTITION_SIZE 	:= 461942784
BOARD_USERDATAIMAGE_PARTITION_SIZE 	:= 987648000
BOARD_FLASH_BLOCK_SIZE 			:= 4096
BOARD_VOLD_MAX_PARTITIONS 		:= 32
BOARD_HAS_LARGE_FILESYSTEM 		:= true
TARGET_USE_CUSTOM_LUN_FILE_PATH 	:= "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"
TARGET_RECOVERY_PRE_COMMAND 		:= "dd if=/dev/zero of=/rom/bcb bs=64 count=1 > /dev/null 2>&1 ; echo 'recovery' >> /rom/bcb ; sync"

BOARD_HAS_SDCARD_INTERNAL 		:= true
BOARD_SDCARD_DEVICE_PRIMARY 		:= /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY 		:= /dev/block/mmcblk0p8
BOARD_SDCARD_DEVICE_INTERNAL 		:= /dev/block/mmcblk0p8
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR 	:= true

# Connectivity - Wi-Fi
USES_TI_MAC80211 := true
ifdef USES_TI_MAC80211
BOARD_WPA_SUPPLICANT_DRIVER             := NL80211
WPA_SUPPLICANT_VERSION                  := VER_0_8_X_TI
BOARD_HOSTAPD_DRIVER                    := NL80211
PRODUCT_WIRELESS_TOOLS                  := true
BOARD_WLAN_DEVICE                       := wl12xx_mac80211
BOARD_SOFTAP_DEVICE                     := wl12xx_mac80211
WIFI_DRIVER_MODULE_PATH                 := "/system/lib/modules/wl12xx_sdio.ko"
WIFI_DRIVER_MODULE_NAME                 := "wl12xx_sdio"
WIFI_FIRMWARE_LOADER                    := ""
COMMON_GLOBAL_CFLAGS                    += -DUSES_TI_MAC80211
endif

# OMAP3 ENHANCE
BOARD_USE_OMAP3_AV_ENHANCE 		:= true

# bionic
TARGET_USE_OMAP4_BIONIC_OPTIMIZATION    := true

# Misc.
BOARD_NEEDS_CUTILS_LOG                  := true

# libion
TARGET_HAS_CUSTOM_LIBION                := true

