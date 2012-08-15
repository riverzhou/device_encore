

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/bn/encore/device.mk)

PRODUCT_NAME := full_encore
PRODUCT_DEVICE := encore
PRODUCT_BRAND := BN
PRODUCT_MODEL := NookColor
PRODUCT_MANUFACTURER := BN

