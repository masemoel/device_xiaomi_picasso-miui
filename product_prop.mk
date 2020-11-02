#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Adb
ifeq ($(TARGET_BUILD_VARIANT),eng)
# /vendor/default.prop is force-setting ro.adb.secure=1
# Get rid of that by overriding it in /product on eng builds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0
endif

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.google.android.GoogleCamera,com.android.camera

PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.lcd_density=440

# Face Unlock
PRODUCT_PRODUCT_PROPERTIES += \
    ro.face.moto_unlock_service.cam_id=5

# Voice recording
PRODUCT_PRODUCT_PROPERTIES += \
    persist.vendor.audio.fluence.voicerec=true
