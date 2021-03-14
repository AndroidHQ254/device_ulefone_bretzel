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

# Inherit from Ulefone Armor X5 device
$(call inherit-product, device/ulefone/bretzel/device.mk)

# Inherit some common RevengeOS stuff.
$(call inherit-product, vendor/revengeos/config/common.mk)

# Boot Animation RES
TARGET_BOOT_ANIMATION_RES := 720

# Build Official
REVENGEOS_BUILDTYPE := OFFICIAL

# Device identifier. This must come after all inclusions.
PRODUCT_RELEASE_NAME := Ulefone Armor X5
PRODUCT_BRAND := Ulefone
PRODUCT_DEVICE := bretzel
PRODUCT_MANUFACTURER := Ulefone
PRODUCT_MODEL := Armor X5
PRODUCT_NAME := revengeos_bretzel

PRODUCT_GMS_CLIENTID_BASE := android-gotron
