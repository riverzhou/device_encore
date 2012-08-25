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

# This file includes all definitions that apply to ALL encore devices, and
# are also specific to otter devices
#
# Everything in this directory will become public


##############################################
# omap3.mk
#PRODUCT_PACKAGES += \
#    libdomx \
#    libskiahw \
#    libstagefrighthw \
#    dspexec \
#    libbridge \
#    overlay.omap3 \

# Hardware HALs
PRODUCT_PACKAGES += \
    lights.encore \
    sensors.encore \
    audio.a2dp.default \
    audio.primary.encore\
    audio_policy.default \
    hwcomposer.default \

#    uim-sysfs \

#    libwvm \

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

# Apps
PRODUCT_PACKAGES += \
    FileManager \

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
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \

#---------------------------------------
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/root/init.encore.rc:/root/init.encore.rc \
    $(LOCAL_PATH)/prebuilt/root/init.usb.rc:/root/init.usb.rc \
    $(LOCAL_PATH)/prebuilt/root/ueventd.encore.rc:/root/ueventd.encore.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bin/clear_bootcnt.sh:/system/bin/clear_bootcnt.sh \
    $(LOCAL_PATH)/prebuilt/bin/battery_log.sh:/system/bin/battery_log.sh \
    $(LOCAL_PATH)/prebuilt/bin/klog.sh:/system/bin/klog.sh \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    $(LOCAL_PATH)/prebuilt/etc/init.d/02oom:system/etc/init.d/02oom \
    $(LOCAL_PATH)/prebuilt/etc/init.d/03mount:system/etc/init.d/03mount \
    $(LOCAL_PATH)/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    $(LOCAL_PATH)/prebuilt/etc/audio_policy.conf:/system/etc/audio_policy.conf \
    $(LOCAL_PATH)/prebuilt/etc/gps.conf:/system/etc/gps.conf \
    $(LOCAL_PATH)/prebuilt/etc/vold.fstab:/system/etc/vold.fstab \
    $(LOCAL_PATH)/prebuilt/etc/wifi/TQS_S_2.6.ini:system/etc/wifi/TQS_S_2.6.ini \

# key mapping and touchscreen files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/idc/cyttsp-i2c.idc:/system/usr/idc/cyttsp-i2c.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/ft5x06-i2c.idc:/system/usr/idc/ft5x06-i2c.idc \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \

#---------------------------------------

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/aosp/media/bootanimation.zip:/system/media/bootanimation.zip \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/ti/etc/media_codecs.xml:/system/etc/media_codecs.xml \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/imgtec/lib/egl/libGLESv2_POWERVR_SGX530_125.so:system/lib/egl/libGLESv2_POWERVR_SGX530_125.so \
    $(LOCAL_PATH)/vendor/imgtec/lib/egl/libEGL_POWERVR_SGX530_125.so:system/lib/egl/libEGL_POWERVR_SGX530_125.so \
    $(LOCAL_PATH)/vendor/imgtec/lib/egl/libGLESv1_CM_POWERVR_SGX530_125.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX530_125.so \

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

# wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/ti/etc/firmware/ti-connectivity/wl128x-fw-4-mr.bin:system/etc/firmware/ti-connectivity/wl128x-fw-4-mr.bin \
    $(LOCAL_PATH)/vendor/ti/etc/firmware/ti-connectivity/wl128x-fw-4-plt.bin:system/etc/firmware/ti-connectivity/wl128x-fw-4-plt.bin \
    $(LOCAL_PATH)/vendor/ti/etc/firmware/ti-connectivity/wl128x-fw-4-sr.bin:system/etc/firmware/ti-connectivity/wl128x-fw-4-sr.bin \
    $(LOCAL_PATH)/vendor/ti/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin \
    $(LOCAL_PATH)/vendor/ti/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin \
    $(LOCAL_PATH)/vendor/ti/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin \
    $(LOCAL_PATH)/vendor/ti/etc/firmware/ti-connectivity/wl1271-nvs_127x.bin:system/etc/firmware/ti-connectivity/wl1271-nvs_127x.bin \
    $(LOCAL_PATH)/vendor/ti/etc/firmware/ti-connectivity/wl1271-nvs.bin:system/etc/firmware/ti-connectivity/wl1271-nvs.bin \

# drm (only for jb)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/google/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
    $(LOCAL_PATH)/vendor/google/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    $(LOCAL_PATH)/vendor/google/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    $(LOCAL_PATH)/vendor/google/lib/libwvm.so:system/vendor/lib/libwvm.so \

##############################################

PRODUCT_PROPERTY_OVERRIDES := \
    dalvik.vm.stack-trace-file=/data/tmp/traces.txt \
    dalvik.vm.heapstartsize=5m \
    dalvik.vm.heapgrowthlimit=42m \
    dalvik.vm.heapsize=128m \
    ro.opengles.version=131072 \
    ro.sf.hwrotation=270 \
    ro.sf.lcd_density=160 \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.cwm.forbid_format = /bootloader,/dfs,/backup,/splash \
    ro.kernel.android.bootanim=1 \
    ro.crypto.state=unencrypted \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=120 \
    wifi.supplicant_scan_interval=180 \
    persist.sys.usb.config=mass_storage,adb \
    persist.sys.purgeable_assets=1 \
    persist.sys.root_access=3 \
    persist.service.adb.enable=1 \
    windowsmgr.max_events_per_sec=200 \
    pm.sleep_mode=1 \
    com.ti.omap_enhancement=true \
    omap.enhancement=true \
    ro.emmc=1 \

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

#$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)
#$(call inherit-product, hardware/ti/omap3/omap3.mk)

