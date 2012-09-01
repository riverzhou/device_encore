#
# Setup device specific product configuration.
#

TARGET_BOOTANIMATION_NAME := 600

# Inherit some common cyanogenmod stuff.
$(call inherit-product-if-exists, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration for Nook Color
$(call inherit-product, device/bn/encore/full_encore.mk)

DEVICE_PACKAGE_OVERLAYS += device/bn/encore/overlay/cm

PRODUCT_NAME := cm_encore
PRODUCT_DEVICE := encore
PRODUCT_BRAND := BN
PRODUCT_MODEL := Nook Color
PRODUCT_MANUFACTURER := BN
PRODUCT_RELEASE_NAME := NookColor
