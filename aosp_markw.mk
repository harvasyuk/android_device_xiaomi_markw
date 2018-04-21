#
# Copyright (C) 2016 The CyanogenMod Project
#               2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from markw device
$(call inherit-product, device/xiaomi/markw/full_markw.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Boot animation res
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_markw
BOARD_VENDOR := Xiaomi
PRODUCT_DEVICE := markw

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := markw

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Xiaomi/markw/markw:6.0.1/MMB29M/V9.2.3.0.MBEMIEK:user/release-keys" \
    PRIVATE_BUILD_DESC="markw-user 6.0.1 MMB29M V9.2.3.0.MBEMIEK release-keys"
