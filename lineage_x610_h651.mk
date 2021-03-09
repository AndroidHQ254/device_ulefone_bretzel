#
#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from Infinix Note 6 device
$(call inherit-product, device/infinix/x610_h651/device.mk)

# Inherit some common Lineage OS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_x610_h651
PRODUCT_DEVICE := x610_h651
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Note 6
PRODUCT_MANUFACTURER := Infinix
PRODUCT_RELEASE_NAME := Infinix Note 6

PRODUCT_GMS_CLIENTID_BASE := android-transsion-infinix-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="Infinix-X610" \
    PRODUCT_NAME="Infinix-X610" \
    PRIVATE_BUILD_DESC="full_x610_h651-user 9 PPR1.180610.011 31055 release-keys"

BUILD_FINGERPRINT := "Infinix/H651B/Infinix-X610:9/PPR1.180610.011/AB-200805V370:user/release-keys"