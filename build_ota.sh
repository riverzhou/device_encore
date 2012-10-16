#!/bin/bash -x

PRODUCT_NAME=encore
MANUFACTURER=bn

case "$1" in
	onlyboot ) 	ONLYBOOT_BUILD=true ;; 	 	
	oldboot ) 	OLDBOOT_BUILD=true ;;   	
	oldkernel ) 	OLDKERNEL_BUILD=true ;;		
esac

CPU_NUMBER=`grep processor /proc/cpuinfo | wc -l`
let CPU_NUMBER+=1

PWD=`pwd`
TOP_DIR=${PWD}

GCC_PREFIX=${PWD}/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/arm-eabi-

WLAN_DIR=${TOP_DIR}/hardware/ti/wlan/mac80211/compat_wl12xx/

TOOLS_DIR=${PWD}/tools/
TESTKEY_PEM=${PWD}/build/target/product/security/testkey.x509.pem
TESTKEY_PK8=${PWD}/build/target/product/security/testkey.pk8

PRODUCT_DIR=${PWD}/out/target/product/${PRODUCT_NAME}/
OTA_DIR=${PRODUCT_DIR}/OTA/
RAMDISK_DIR=${PRODUCT_DIR}/ramdisk/
KERNEL_OUT=${PRODUCT_DIR}/kernel/
ROOT_DIR=${PRODUCT_DIR}/root/

KERNEL_MODULES_OUT=${OTA_DIR}/modules/

RAMDISK_SOURCE=${PWD}/device/${MANUFACTURER}/${PRODUCT_NAME}/ramdisk/
DEVICE_SOURCE=${PWD}/device/${MANUFACTURER}/${PRODUCT_NAME}/
KERNEL_SOURCE=${PWD}/kernel/${MANUFACTURER}/${PRODUCT_NAME}/
METAINF_SOURCE=${PWD}/device/${MANUFACTURER}/${PRODUCT_NAME}/OTA/

RAMDISK_MKIMAGE=" -A ARM -O Linux -T RAMDisk -C none -n AOSP_encore_Ramdisk "
KERNEL_MKIMAGE=" -A ARM -O Linux -T Kernel -C none -a 80008000 -e 80008000 -n Linux-3.0.8+ "
#KERNEL_DEFCONFIG=encore_defconfig
KERNEL_DEFCONFIG=river_defconfig

#-----------------------------------------------

rm    -rf ${OTA_DIR}
mkdir -p  ${OTA_DIR}/META-INF/com/google/android/
cp    -f ${METAINF_SOURCE}/update-binary  ${OTA_DIR}/META-INF/com/google/android/update-binary

if [ "$OLDBOOT_BUILD" != "true" ] || [ ! -f ${PRODUCT_DIR}/boot.img ] ; then
	rm    -rf ${RAMDISK_DIR}
	mkdir -p  ${RAMDISK_DIR}
	cp    -rf ${RAMDISK_SOURCE}/* ${RAMDISK_DIR}
	mkdir -p  ${RAMDISK_DIR}/data
	mkdir -p  ${RAMDISK_DIR}/dev
	mkdir -p  ${RAMDISK_DIR}/dropbox
	mkdir -p  ${RAMDISK_DIR}/modules
	mkdir -p  ${RAMDISK_DIR}/proc
	mkdir -p  ${RAMDISK_DIR}/sbin
	mkdir -p  ${RAMDISK_DIR}/sys
	mkdir -p  ${RAMDISK_DIR}/system
	cp    -f  ${ROOT_DIR}/init      ${RAMDISK_DIR}/init
	cp    -f  ${ROOT_DIR}/sbin/adbd ${RAMDISK_DIR}/sbin/adbd
        cd        ${RAMDISK_DIR}/sbin
        ln    -s  ../init ueventd
        cd        ${TOP_DIR}

	if [ "$OLDKERNEL_BUILD" != "true" ] || [ ! -f ${KERNEL_OUT}/arch/arm/boot/zImage ] ; then
		#cp -f ${DEVICE_SOURCE}/river_defconfig  ${KERNEL_SOURCE}/arch/arm/configs/river_defconfig

		rm     -rf ${KERNEL_OUT}
		mkdir  -p  ${KERNEL_OUT}
		export ARCH=arm
		export CROSS_COMPILE=${GCC_PREFIX}
		export KERNEL_CROSS_COMPILE=${GCC_PREFIX}
		make   -C ${KERNEL_SOURCE} O=${KERNEL_OUT}  ${KERNEL_DEFCONFIG}
		make   -C ${KERNEL_SOURCE} O=${KERNEL_OUT}  -j ${CPU_NUMBER}

                if [ ! -f ${KERNEL_OUT}/arch/arm/boot/zImage ] ; then
                        echo 'kernel build failed ... '
                        exit 1
                fi

		rm     -rf ${KERNEL_MODULES_OUT}
		mkdir  -p ${KERNEL_MODULES_OUT}
		cd     ${WLAN_DIR}
		make   clean 
		make   -j ${CPU_NUMBER} KERNEL_DIR=${KERNEL_OUT} KLIB=${KERNEL_OUT} KLIB_BUILD=${KERNEL_OUT} 
		cp     compat/compat.ko ${KERNEL_MODULES_OUT}
		cp     net/mac80211/mac80211.ko ${KERNEL_MODULES_OUT}
		cp     net/wireless/cfg80211.ko ${KERNEL_MODULES_OUT}
		cp     drivers/net/wireless/wl12xx/wl12xx.ko ${KERNEL_MODULES_OUT}
		#cp     drivers/net/wireless/wl12xx/wl12xx_spi.ko ${KERNEL_MODULES_OUT}
		cp     drivers/net/wireless/wl12xx/wl12xx_sdio.ko ${KERNEL_MODULES_OUT}
		cd     ${TOP_DIR}
	fi 

	${TOOLS_DIR}/mkbootfs ${RAMDISK_DIR} | gzip      > ${PRODUCT_DIR}/ramdisk.gz
        ${TOOLS_DIR}/mkimage ${RAMDISK_MKIMAGE} 	-d ${PRODUCT_DIR}/ramdisk.gz 		${PRODUCT_DIR}/uRamdisk
	${TOOLS_DIR}/mkimage ${KERNEL_MKIMAGE}  	-d ${KERNEL_OUT}/arch/arm/boot/zImage 	${PRODUCT_DIR}/uImage
fi 
cp ${PRODUCT_DIR}/uRamdisk 		${OTA_DIR}/uRamdisk
cp ${PRODUCT_DIR}/uImage   		${OTA_DIR}/uImage
cp ${METAINF_SOURCE}/uboot/MLO   	${OTA_DIR}/MLO
cp ${METAINF_SOURCE}/uboot/u-boot.bin 	${OTA_DIR}/u-boot.bin

if [ "$ONLYBOOT_BUILD" != "true" ] && [ "$OLDKERNEL_BUILD" != "true" ] ; then
	${TOOLS_DIR}/simg2img ${PRODUCT_DIR}/system.img ${OTA_DIR}/system.img
	OTA_FILE=${PRODUCT_DIR}/full_${PRODUCT_NAME}-ota
	cp    -f ${METAINF_SOURCE}/updater-script_full ${OTA_DIR}/META-INF/com/google/android/updater-script 
else
	OTA_FILE=${PRODUCT_DIR}/boot_${PRODUCT_NAME}-ota
	cp    -f ${METAINF_SOURCE}/updater-script_boot ${OTA_DIR}/META-INF/com/google/android/updater-script 
fi

rm -f ${OTA_FILE}.zip
cd ${OTA_DIR}/
zip -ry ${OTA_FILE}.zip .
cd ${TOP_DIR}

java -Xmx2048m -jar ${TOOLS_DIR}/signapk.jar -w ${TESTKEY_PEM} ${TESTKEY_PK8} ${OTA_FILE}.zip ${OTA_FILE}-signed.zip
ls -l ${OTA_FILE}-signed.zip

