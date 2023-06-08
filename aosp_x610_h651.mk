#
#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := Infinix Note 6

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from Infinix Note 6 device
$(call inherit-product, device/infinix/x610_h651/device.mk)

# Inherit some common PixelExperience stuff.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_x610_h651
PRODUCT_DEVICE := x610_h651
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Note 6
PRODUCT_MANUFACTURER := Infinix

# Product characteristics
PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Infinix/H651B/Infinix-X610:9/PPR1.180610.011/AB-200805V370:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_x610_h651-user 9 PPR1.180610.011 31055 release-keys" \
    TARGET_DEVICE="Infinix-X610" \
    PRODUCT_NAME="Infinix-X610"

# GMS as per stock
PRODUCT_GMS_CLIENTID_BASE := android-transsion-infinix-rev1
