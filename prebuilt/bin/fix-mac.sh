#!/system/bin/sh

PATH=/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin
NVS_BIN=/system/etc/firmware/ti-connectivity/wl1271-nvs.bin

if [ ! -f "$NVS_BIN" ]; then
    mount -o remount,rw /system
    cp ${NVS_BIN}.orig ${NVS_BIN}
    calibrator set nvs_mac $NVS_BIN $(cat /rom/devconf/MACAddress|sed -e 's/)//g'|sed -e 's/-//g'|sed 's/../&:/g;s/:$//')
    sync
    mount -o remount,ro /system
fi

