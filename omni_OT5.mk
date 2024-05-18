#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)


# Inherit from OT5 device
$(call inherit-product, device/fih/OT5/device.mk)

PRODUCT_DEVICE := OT5
PRODUCT_NAME := omni_OT5
PRODUCT_BRAND := TCL
PRODUCT_MODEL := T508N
PRODUCT_MANUFACTURER := fih

PRODUCT_GMS_CLIENTID_BASE := android-fih

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OT5_CM_FIH-user 13 TP1A.220624.014 508NCM5K release-keys"

BUILD_FINGERPRINT := TCL/OT5_CM_FIH/OT5:13/TP1A.220624.014/508NCM5K:user/release-keys
