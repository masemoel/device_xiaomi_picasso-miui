#
# Copyright (C) 2020 AICP
#
# SPDX-License-Identifier: Apache-2.0
#

# ANXCamera
$(call inherit-product-if-exists, vendor/ANXCamera/config.mk)

# Inherit from picasso device
$(call inherit-product, device/xiaomi/picasso/device.mk)

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aicp_picasso
PRODUCT_DEVICE := picasso
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30 5G
PRODUCT_MANUFACTURER := Redmi

TARGET_VENDOR_PRODUCT_NAME := Redmi K30 5G
TARGET_VENDOR_DEVICE_NAME := Redmi K30 5G

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="masemoel"

# Build info
BUILD_FINGERPRINT := google/coral/coral:10/QQ3A.200805.001/6578210:user/release-keys
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=picasso \
    PRODUCT_NAME=picasso \
    PRIVATE_BUILD_DESC="picasso-user 10 QKQ1.191222.002/V12.0.2.0.QGICNXM release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_FACE_UNLOCK_SUPPORTED := true
