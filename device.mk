#==========================================================================
#
# Copyright (C) 2012 The Android Open-Source Project
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

##############################################
# Product specfic packages
# OMX components
#PRODUCT_PACKAGES += \
#    libI420colorconvert \
#    libLCML \
#    libOMX_Core \
#    libOMX.TI.AAC.decode \
#    libOMX.TI.AAC.decode \
#    libOMX.TI.AAC.encode \
#    libOMX.TI.AMR.decode \
#    libOMX.TI.AMR.encode \
#    libOMX.TI.AMR.encode \
#    libOMX.TI.G711.decode \
#    libOMX.TI.G711.encode \
#    libOMX.TI.G722.decode \
#    libOMX.TI.G722.encode \
#    libOMX.TI.G726.decode \
#    libOMX.TI.G726.encode \
#    libOMX.TI.G729.decode \
#    libOMX.TI.G729.encode \
#    libOMX.TI.ILBC.decode \
#    libOMX.TI.ILBC.encode \
#    libOMX.TI.JPEG.decoder \
#    libOMX.TI.JPEG.encoder \
#    libOMX.TI.JPEG.Encoder \
#    libOMX.TI.MP3.decode \
#    libOMX.TI.Video.Decoder \
#    libOMX.TI.Video.encoder \
#    libOMX.TI.VPP \
#    libOMX.TI.WBAMR.decode \
#    libOMX.TI.WBAMR.encode \
#    libOMX.TI.WBAMR.encode \
#    libOMX.TI.WMA.decode \
#    libVendor_ti_omx \
#


# Hardware HALs
PRODUCT_PACKAGES += \
    overlay.omap3 \
    lights.encore \
    sensors.encore \
    audio.a2dp.default \
    audio.primary.encore\
    audio_policy.default \
    hwcomposer.default \

PRODUCT_PACKAGES += \
    libinvensense_mpl \
    libaudioutils \
    libion \

# Wifi
PRODUCT_PACKAGES += \
    lib_driver_cmd_wl12xx \
    dhcpcd.conf \
    wpa_supplicant.conf \
    libtiOsLib \

# Sound
PRODUCT_PACKAGES += \
    tinyplay \
    tinymix \
    tinycap \

# Misc
PRODUCT_PACKAGES += \
    hwprops \
    librs_jni \
    com.android.future.usb.accessory \
    libjni_pinyinime \
    make_ext4fs \
    setup_fs \
    calibrator \
    iontest \
    busybox \
    su \
    strace \

PRODUCT_PACKAGES += \
    libdomx \
    libstagefrighthw \
    libion \
    smc_pa_ctrl \
    tf_daemon \
    cexec.out \
    libskiahw \

# Apps
PRODUCT_PACKAGES += \
    Term \
    FileManager \
    RE \
    SuperSU \

##############################################

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \

#---------------------------------------
# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/root/init.encore.usb.rc:root/init.encore.usb.rc \
    $(LOCAL_PATH)/prebuilt/root/init.encore.rc:root/init.encore.rc \
    $(LOCAL_PATH)/prebuilt/root/ueventd.encore.rc:root/ueventd.encore.rc \

# Prebuilt /system/media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/aosp/media/bootanimation.zip:/system/media/bootanimation.zip \

# Prebuilt /system/usr
# key mapping and touchscreen files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/idc/cyttsp-i2c.idc:/system/usr/idc/cyttsp-i2c.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/ft5x06-i2c.idc:/system/usr/idc/ft5x06-i2c.idc \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \

# Prebuilt /etc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/wifi/TQS_S_2.6.ini:system/etc/wifi/TQS_S_2.6.ini \
    $(LOCAL_PATH)/prebuilt/etc/init.d/01fixmac:system/etc/init.d/01fixmac \
    $(LOCAL_PATH)/prebuilt/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    $(LOCAL_PATH)/prebuilt/etc/init.d/02oom:system/etc/init.d/02oom \
    $(LOCAL_PATH)/prebuilt/etc/init.d/03mount:system/etc/init.d/03mount \
    $(LOCAL_PATH)/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    $(LOCAL_PATH)/prebuilt/etc/audio_policy.conf:/system/etc/audio_policy.conf \
    $(LOCAL_PATH)/prebuilt/etc/gps.conf:/system/etc/gps.conf \
    $(LOCAL_PATH)/prebuilt/etc/media_codecs.xml:/system/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:/system/etc/media_profiles.xml \
    $(LOCAL_PATH)/prebuilt/etc/mountd.conf:/system/etc/mountd.conf \
    $(LOCAL_PATH)/prebuilt/etc/vold.fstab:/system/etc/vold.fstab \

# Prebuilt /bin
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bin/clear_bootcnt.sh:/system/bin/clear_bootcnt.sh \
    $(LOCAL_PATH)/prebuilt/bin/klog.sh:/system/bin/klog.sh \
    $(LOCAL_PATH)/prebuilt/bin/temperature_log.sh:/system/bin/temperature_log.sh \
    $(LOCAL_PATH)/prebuilt/bin/battery_log.sh:/system/bin/battery_log.sh \
    $(LOCAL_PATH)/prebuilt/bin/fix-mac.sh:/system/bin/fix-mac.sh \

#---------------------------------------
#vendor file Wifi
#    $(LOCAL_PATH)/vendor/ti/etc/firmware/ducati-m3.bin:/system/etc/firmware/ducati-m3.bin \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/ti/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin \
    $(LOCAL_PATH)/vendor/ti/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin \
    $(LOCAL_PATH)/vendor/ti/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin \
    $(LOCAL_PATH)/vendor/ti/etc/firmware/ti-connectivity/wl1271-nvs_127x.bin:system/etc/firmware/ti-connectivity/wl1271-nvs.bin.orig \

# Graphics
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/imgtec/lib/hw/gralloc.omap3.so:system/vendor/lib/hw/gralloc.omap3.so \
    $(LOCAL_PATH)/vendor/imgtec/lib/egl/libGLESv2_POWERVR_SGX530_125.so:system/vendor/lib/egl/libGLESv2_POWERVR_SGX530_125.so \
    $(LOCAL_PATH)/vendor/imgtec/lib/egl/libEGL_POWERVR_SGX530_125.so:system/vendor/lib/egl/libEGL_POWERVR_SGX530_125.so \
    $(LOCAL_PATH)/vendor/imgtec/lib/egl/libGLESv1_CM_POWERVR_SGX530_125.so:system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX530_125.so \
    $(LOCAL_PATH)/vendor/imgtec/lib/libglslcompiler.so:system/vendor/lib/libglslcompiler.so \
    $(LOCAL_PATH)/vendor/imgtec/lib/libpvr2d.so:system/vendor/lib/libpvr2d.so \
    $(LOCAL_PATH)/vendor/imgtec/lib/libpvrANDROID_WSEGL.so:system/vendor/lib/libpvrANDROID_WSEGL.so \
    $(LOCAL_PATH)/vendor/imgtec/lib/libsrv_init.so:system/vendor/lib/libsrv_init.so \
    $(LOCAL_PATH)/vendor/imgtec/lib/libIMGegl.so:system/vendor/lib/libIMGegl.so \
    $(LOCAL_PATH)/vendor/imgtec/lib/libPVRScopeServices.so:system/vendor/lib/libPVRScopeServices.so \
    $(LOCAL_PATH)/vendor/imgtec/lib/libsrv_um.so:system/vendor/lib/libsrv_um.so \
    $(LOCAL_PATH)/vendor/imgtec/lib/libusc.so:system/vendor/lib/libusc.so \
    $(LOCAL_PATH)/vendor/imgtec/bin/pvrsrvinit:system/vendor/bin/pvrsrvinit \
    $(LOCAL_PATH)/vendor/imgtec/bin/pvrsrvctl:system/vendor/bin/pvrsrvctl \
    $(LOCAL_PATH)/vendor/imgtec/lib/libPVRShell_OGLES2Shaders.so:system/vendor/lib/libPVRShell_OGLES2Shaders.so \
    $(LOCAL_PATH)/vendor/imgtec/lib/libPVRShell_OGLESVase.so:system/vendor/lib/libPVRShell_OGLESVase.so \
    $(LOCAL_PATH)/vendor/imgtec/lib/libPVRShell_OGLES2Coverflow.so:system/vendor/lib/libPVRShell_OGLES2Coverflow.so \
    $(LOCAL_PATH)/vendor/imgtec/lib/libPVRShell_OGLES2ChameleonMan.so:system/vendor/lib/libPVRShell_OGLES2ChameleonMan.so \

#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/vendor/ti/lib/libdomx.so:/system/vendor/lib/libdomx.so \
#    $(LOCAL_PATH)/vendor/ti/lib/libmm_osal.so:/system/vendor/lib/libmm_osal.so \
#    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.DUCATI1.MISC.SAMPLE.so:/system/vendor/lib/libOMX.TI.DUCATI1.MISC.SAMPLE.so \
#    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.DUCATI1.VIDEO.CAMERA.so:/system/vendor/lib/libOMX.TI.DUCATI1.VIDEO.CAMERA.so \
#    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.secure.so:/system/vendor/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.secure.so \
#    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.so:/system/vendor/lib/libOMX.TI.DUCATI1.VIDEO.DECODER.so \
#    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.DUCATI1.VIDEO.H264E.so:/system/vendor/lib/libOMX.TI.DUCATI1.VIDEO.H264E.so \
#    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.DUCATI1.VIDEO.MPEG4E.so:/system/vendor/lib/libOMX.TI.DUCATI1.VIDEO.MPEG4E.so \
#    $(LOCAL_PATH)/vendor/ti/lib/libOMX_Core.so:/system/vendor/lib/libOMX_Core.so \

##############################################

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=160 \
    dalvik.vm.heapsize=64m \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=120 \
    ro.sf.hwrotation=270 \
    ro.opengles.version=131072 \
    persist.lab126.chargeprotect=1 \
    com.ti.omap_enhancement=true \
    omap.enhancement=true \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    persist.sys.usb.config=mass_storage,adb \
    ro.debuggable=1 \
    ro.cwm.forbid_format = /bootloader,/dfs,/backup,/splash \
    persist.sys.purgeable_assets=1 \
    pm.sleep_mode=1 \
    wifi.supplicant_scan_interval=180 \
    windowsmgr.max_events_per_sec=200 \
    ro.kernel.android.bootanim=1 \
    persist.sys.root_access=1 \
    ro.additionalmounts=/mnt/emmc;/mnt/usbdisk \
    ro.vold.switchablepair=/mnt/sdcard,/mnt/emmc \
    ro.pm.awake_on_usb=1 \
    ro.cwm.forbid_format=/boot \
    ro.emmc=1 \
    com.ti.omap_compat=true \
    opencore.asmd=1 \
    ro.magic.optimization=ZOMG \
    ro.secure=0 \
    persist.service.adb.enable \

##############################################

ifeq ($(TARGET_PREBUILT_BOOTLOADER),)
    LOCAL_BOOTLOADER := $(LOCAL_PATH)/prebuilt/boot/MLO
else
    LOCAL_BOOTLOADER := $(TARGET_PREBUILT_BOOTLOADER)
endif

ifeq ($(TARGET_PREBUILT_2NDBOOTLOADER),)
    LOCAL_2NDBOOTLOADER := $(LOCAL_PATH)/prebuilt/boot/u-boot.bin
else
    LOCAL_2NDBOOTLOADER := $(TARGET_PREBUILT_2NDBOOTLOADER)
endif

# Boot files
PRODUCT_COPY_FILES += \
    $(LOCAL_BOOTLOADER):bootloader \
    $(LOCAL_2NDBOOTLOADER):2ndbootloader

##############################################

PRODUCT_AAPT_CONFIG := large mdpi

PRODUCT_AAPT_PREF_CONFIG := large

PRODUCT_CHARACTERISTICS := tablet

DEVICE_PACKAGE_OVERLAYS := device/bn/encore/overlay/aosp

PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)

