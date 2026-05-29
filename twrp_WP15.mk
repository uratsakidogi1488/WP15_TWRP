#
# Copyright (C) 2023 The TWRP Open Source Project
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs GSI keys into ramdisk
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from device configuration
$(call inherit-product, device/oukitel/WP15/device.mk)

# Inherit common TWRP configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier
PRODUCT_DEVICE := WP15
PRODUCT_NAME := twrp_WP15
PRODUCT_BRAND := OUKITEL
PRODUCT_MODEL := WP15
PRODUCT_MANUFACTURER := OUKITEL
PRODUCT_RELEASE_NAME := OUKITEL WP15

# Build Property Overrides for V07_20230215
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=WP15 \
    PRODUCT_NAME=WP15_RU \
    PRIVATE_BUILD_DESC="WP15_RU-user 11 RP1A.200720.011 V07_20230215 release-keys"

BUILD_FINGERPRINT := OUKITEL/WP15_RU/WP15:11/RP1A.200720.011/V07_20230215:user/release-keys

# Dynamic Partition Support
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.dynamic_partitions=true \
    ro.boot.dynamic_partitions_op=1
