# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from markw device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Colt-Enigma stuff
$(call inherit-product, vendor/colt/common.mk)
$(call inherit-product, packages/apps/ColtApps/common.mk)

# Bootanimatuon Resolution
TARGET_BOOT_ANIMATION_RES := 1080x1920

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := Xiaomi
PRODUCT_NAME := colt_markw
BOARD_VENDOR := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_DEVICE := markw
PRODUCT_MODEL := Redmi 4 Prime

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="walleye-user 8.1.0 OPM1.171019.021 4565141 release-keys"
    
# colt Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
	ro.colt.maintainer=SonicBSV

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/walleye/walleye:8.1.0/OPM1.171019.021/4565141:user/release-keys
