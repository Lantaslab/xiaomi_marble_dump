#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from marble device
$(call inherit-product, device/xiaomi/marble/device.mk)

PRODUCT_DEVICE := marble
PRODUCT_NAME := omni_marble
PRODUCT_BRAND := generic
PRODUCT_MODEL := evolution_marble
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="evolution_marble-userdebug 13 TQ3A.230705.001.B4 1689171750 release-keys"

BUILD_FINGERPRINT := generic/evolution_marble/marble:13/TQ3A.230705.001.B4/ubuntu07121422:userdebug/release-keys
