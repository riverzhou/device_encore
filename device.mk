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

# Hardware HALs
PRODUCT_PACKAGES += \
    lights.encore \
    sensors.encore \
    audio.a2dp.default \
    audio.primary.encore\
    audio_policy.default \
    power.otter \

#    hwcomposer.default \

# Wifi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd.conf \
    wpa_supplicant.conf \
    calibrator \

# Sound
PRODUCT_PACKAGES += \
    tinyplay \
    tinymix \
    tinycap \

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    make_ext4fs \
    setup_fs \
    busybox \
    su \
    strace \

# Apps
PRODUCT_PACKAGES += \
    FileManager \
    Superuser \

##############################################

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \

#---------------------------------------

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bin/clear_bootcnt.sh:/system/bin/clear_bootcnt.sh \
    $(LOCAL_PATH)/prebuilt/bin/battery_log.sh:/system/bin/battery_log.sh \
    $(LOCAL_PATH)/prebuilt/bin/klog.sh:/system/bin/klog.sh \

#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/prebuilt/bin/fix-mac.sh:/system/bin/fix-mac.sh \
#    $(LOCAL_PATH)/prebuilt/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
#    $(LOCAL_PATH)/prebuilt/etc/init.d/02oom:system/etc/init.d/02oom \
#    $(LOCAL_PATH)/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \

PRODUCT_COPY_FILES += \
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

# wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/ti/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin \
    $(LOCAL_PATH)/vendor/ti/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin \
    $(LOCAL_PATH)/vendor/ti/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin:system/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin \
    $(LOCAL_PATH)/vendor/ti/etc/firmware/ti-connectivity/wl1271-nvs_127x.bin:system/etc/firmware/ti-connectivity/wl1271-nvs.bin \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/ti/vendor/lib/hw/libstagefrighthw.so:system/vendor/lib/hw/libstagefrighthw.so \
    $(LOCAL_PATH)/vendor/ti/vendor/lib/libbridge.so:system/vendor/lib/libbridge.so \
    $(LOCAL_PATH)/vendor/ti/vendor/lib/libion.so:system/vendor/lib/libion.so \
    $(LOCAL_PATH)/vendor/ti/vendor/bin/dspexec:system/vendor/bin/dspexec \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/baseimage.map:system/lib/dsp/baseimage.map \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/baseimage.dof:system/lib/dsp/baseimage.dof \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/dynbase_tiomap3430.dof64P:system/lib/dsp/dynbase_tiomap3430.dof64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/monitor_tiomap3430.dof64P:system/lib/dsp/monitor_tiomap3430.dof64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/ddspbase_tiomap3430.dof64P:system/lib/dsp/ddspbase_tiomap3430.dof64P \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/star.l64P:system/lib/dsp/star.l64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/eenf_ti.l64P:system/lib/dsp/eenf_ti.l64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/yuvconvert.l64p:system/lib/dsp/yuvconvert.l64p \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/chromasuppress.l64p:system/lib/dsp/chromasuppress.l64p \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/720p_mp4vdec_sn.dll64P:system/lib/dsp/720p_mp4vdec_sn.dll64P \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/usn.dll64P:system/lib/dsp/usn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/dfgm.dll64P:system/lib/dsp/dfgm.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/ipp_sn.dll64P:system/lib/dsp/ipp_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/ringio.dll64P:system/lib/dsp/ringio.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/vpp_sn.dll64P:system/lib/dsp/vpp_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/dctn_dyn.dll64P:system/lib/dsp/dctn_dyn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/mp3dec_sn.dll64P:system/lib/dsp/mp3dec_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/wmadec_sn.dll64P:system/lib/dsp/wmadec_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/m4venc_sn.dll64P:system/lib/dsp/m4venc_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/g711dec_sn.dll64P:system/lib/dsp/g711dec_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/g711enc_sn.dll64P:system/lib/dsp/g711enc_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/g722dec_sn.dll64P:system/lib/dsp/g722dec_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/g722enc_sn.dll64P:system/lib/dsp/g722enc_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/g726dec_sn.dll64P:system/lib/dsp/g726dec_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/g726enc_sn.dll64P:system/lib/dsp/g726enc_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/g729dec_sn.dll64P:system/lib/dsp/g729dec_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/jpegenc_sn.dll64P:system/lib/dsp/jpegenc_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/g729enc_sn.dll64P:system/lib/dsp/g729enc_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/wmv9dec_sn.dll64P:system/lib/dsp/wmv9dec_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/mp4vdec_sn.dll64P:system/lib/dsp/mp4vdec_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/ilbcdec_sn.dll64P:system/lib/dsp/ilbcdec_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/ilbcenc_sn.dll64P:system/lib/dsp/ilbcenc_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/jpegdec_sn.dll64P:system/lib/dsp/jpegdec_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/conversions.dll64P:system/lib/dsp/conversions.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/qosdyn_3430.dll64P:system/lib/dsp/qosdyn_3430.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/nbamrdec_sn.dll64P:system/lib/dsp/nbamrdec_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/nbamrenc_sn.dll64P:system/lib/dsp/nbamrenc_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/h264vdec_sn.dll64P:system/lib/dsp/h264vdec_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/h264venc_sn.dll64P:system/lib/dsp/h264venc_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/sparkdec_sn.dll64P:system/lib/dsp/sparkdec_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/wbamrdec_sn.dll64P:system/lib/dsp/wbamrdec_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/wbamrenc_sn.dll64P:system/lib/dsp/wbamrenc_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/mpeg4aacdec_sn.dll64P:system/lib/dsp/mpeg4aacdec_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/mpeg4aacenc_sn.dll64P:system/lib/dsp/mpeg4aacenc_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/720p_h264vdec_sn.dll64P:system/lib/dsp/720p_h264vdec_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/720p_wmv9vdec_sn.dll64P:system/lib/dsp/720p_wmv9vdec_sn.dll64P \
    $(LOCAL_PATH)/vendor/ti/lib/dsp/postprocessor_dualout.dll64P:system/lib/dsp/postprocessor_dualout.dll64P \

# OMX
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/ti/lib/libPERF.so:system/lib/libPERF.so \
    $(LOCAL_PATH)/vendor/ti/lib/libLCML.so:system/lib/libLCML.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX_Core.so:system/lib/libOMX_Core.so \
    $(LOCAL_PATH)/vendor/ti/lib/libstagefrighthw.so:system/lib/libstagefrighthw.so: \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.AAC.decode.so:system/lib/libOMX.TI.AAC.decode.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.AAC.encode.so:system/lib/libOMX.TI.AAC.encode.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.AMR.decode.so:system/lib/libOMX.TI.AMR.decode.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.AMR.encode.so:system/lib/libOMX.TI.AMR.encode.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.MP3.decode.so:system/lib/libOMX.TI.MP3.decode.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.WMA.decode.so:system/lib/libOMX.TI.WMA.decode.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.G711.decode.so:system/lib/libOMX.TI.G711.decode.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.G711.encode.so:system/lib/libOMX.TI.G711.encode.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.G722.decode.so:system/lib/libOMX.TI.G722.decode.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.G722.encode.so:system/lib/libOMX.TI.G722.encode.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.G726.decode.so:system/lib/libOMX.TI.G726.decode.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.G726.encode.so:system/lib/libOMX.TI.G726.encode.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.G729.decode.so:system/lib/libOMX.TI.G729.decode.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.G729.encode.so:system/lib/libOMX.TI.G729.encode.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.ILBC.decode.so:system/lib/libOMX.TI.ILBC.decode.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.ILBC.encode.so:system/lib/libOMX.TI.ILBC.encode.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.720P.Decoder.so:system/lib/libOMX.TI.720P.Decoder.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.JPEG.encoder.so:system/lib/libOMX.TI.JPEG.encoder.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.WBAMR.decode.so:system/lib/libOMX.TI.WBAMR.decode.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.WBAMR.encode.so:system/lib/libOMX.TI.WBAMR.encode.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.Video.Decoder.so:system/lib/libOMX.TI.Video.Decoder.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.TI.Video.encoder.so:system/lib/libOMX.TI.Video.encoder.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.ITTIAM.AAC.decode.so:system/lib/libOMX.ITTIAM.AAC.decode.so \
    $(LOCAL_PATH)/vendor/ti/lib/libOMX.ITTIAM.WMA.decode.so:system/lib/libOMX.ITTIAM.WMA.decode.so \

# Graphics
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/imgtec/vendor/lib/hw/gralloc.omap3.so:system/vendor/lib/hw/gralloc.omap3.so \
    $(LOCAL_PATH)/vendor/imgtec/vendor/lib/egl/libGLESv2_POWERVR_SGX530_125.so:system/vendor/lib/egl/libGLESv2_POWERVR_SGX530_125.so \
    $(LOCAL_PATH)/vendor/imgtec/vendor/lib/egl/libEGL_POWERVR_SGX530_125.so:system/vendor/lib/egl/libEGL_POWERVR_SGX530_125.so \
    $(LOCAL_PATH)/vendor/imgtec/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX530_125.so:system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX530_125.so \
    $(LOCAL_PATH)/vendor/imgtec/vendor/lib/libglslcompiler.so:system/vendor/lib/libglslcompiler.so \
    $(LOCAL_PATH)/vendor/imgtec/vendor/lib/libpvr2d.so:system/vendor/lib/libpvr2d.so \
    $(LOCAL_PATH)/vendor/imgtec/vendor/lib/libbltsville_cpu.so:system/vendor/lib/libbltsville_cpu.so \
    $(LOCAL_PATH)/vendor/imgtec/vendor/lib/libpvrANDROID_WSEGL.so:system/vendor/lib/libpvrANDROID_WSEGL.so \
    $(LOCAL_PATH)/vendor/imgtec/vendor/lib/libsrv_init.so:system/vendor/lib/libsrv_init.so \
    $(LOCAL_PATH)/vendor/imgtec/vendor/lib/libOpenVG.so:system/vendor/lib/libOpenVG.so \
    $(LOCAL_PATH)/vendor/imgtec/vendor/lib/libbltsville_ticpu.so:system/vendor/lib/libbltsville_ticpu.so \
    $(LOCAL_PATH)/vendor/imgtec/vendor/lib/libIMGegl.so:system/vendor/lib/libIMGegl.so \
    $(LOCAL_PATH)/vendor/imgtec/vendor/lib/libbltsville_ticpu.2.0.0.10.so:system/vendor/lib/libbltsville_ticpu.2.0.0.10.so \
    $(LOCAL_PATH)/vendor/imgtec/vendor/lib/libPVRScopeServices.so:system/vendor/lib/libPVRScopeServices.so \
    $(LOCAL_PATH)/vendor/imgtec/vendor/lib/libOpenVGU.so:system/vendor/lib/libOpenVGU.so \
    $(LOCAL_PATH)/vendor/imgtec/vendor/lib/libsrv_um.so:system/vendor/lib/libsrv_um.so \
    $(LOCAL_PATH)/vendor/imgtec/vendor/lib/libusc.so:system/vendor/lib/libusc.so \
    $(LOCAL_PATH)/vendor/imgtec/vendor/bin/pvrsrvinit:system/vendor/bin/pvrsrvinit \

# drm (only for jb)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/google/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
    $(LOCAL_PATH)/vendor/google/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    $(LOCAL_PATH)/vendor/google/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    $(LOCAL_PATH)/vendor/google/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \

##############################################

PRODUCT_PROPERTY_OVERRIDES := \
    dalvik.vm.heapstartsize=5m \
    dalvik.vm.heapgrowthlimit=64m \
    dalvik.vm.heapsize=256m \
    drm.service.enabled=true \
    persist.service.adb.enable=1 \
    persist.sys.purgeable_assets=1 \
    persist.sys.root_access=3 \
    persist.sys.usb.config=mass_storage,adb \
    ro.carrier=wifi-only \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.crypto.state=unencrypted \
    ro.kernel.android.bootanim=1 \
    ro.opengles.version=131072 \
    ro.sf.lcd_density=160 \
    ro.sf.hwrotation=270 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \

##############################################

PRODUCT_AAPT_CONFIG 		:= large mdpi
PRODUCT_AAPT_PREF_CONFIG 	:= large
PRODUCT_CHARACTERISTICS 	:= tablet
DEVICE_PACKAGE_OVERLAYS 	:= device/bn/encore/overlay
PRODUCT_TAGS 			+= dalvik.gc.type-precise

