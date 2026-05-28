#
# Copyright (C) 2023 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
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
PRODUCT_MANUFACTURER := wheatek
PRODUCT_RELEASE_NAME := OUKITEL WP15

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=WP15 \
    PRODUCT_NAME=WP15_RU \
    PRIVATE_BUILD_DESC="WP15_RU-user 11 RP1A.200720.011 1653633312 release-keys"

BUILD_FINGERPRINT := OUKITEL/WP15_RU/WP15:11/RP1A.200720.011/1653633312:user/release-keys
