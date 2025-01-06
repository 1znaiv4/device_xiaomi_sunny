#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sunny device
$(call inherit-product, device/xiaomi/sunny/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false     

# List of add-ons
PRODUCT_PACKAGES += \
    MarkupGoogle \
    LatinIMEGooglePrebuilt \
    AiWallpapers \
    WallpaperEmojiPrebuilt \
    PrebuiltDeskClockGoogle \
    CalculatorGooglePrebuilt \
    CalendarGooglePrebuilt

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_sunny
PRODUCT_DEVICE := sunny
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2101K7AG
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_SYSTEM_NAME := sunny

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=$(PRODUCT_SYSTEM_NAME) \
    RisingMaintainer="ZNAIV" \
    RisingChipset="Qualcomm SDM678"
