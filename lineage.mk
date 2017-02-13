# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit AOSP Loire device parts
$(call inherit-product, device/sony/kugo/aosp_f5321.mk)

# Inherit Lineage Loire device parts
$(call inherit-product, device/sony/loire-common/platform2.mk)

# Inherit Lineage common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Dalvik/HWUI
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

# Fingerprint for kugo (from stock)
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=F5321
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/kugo/kugo:6.0.1/LOIRE-1.0.2-160802-2002/1:user/dev-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="kugo-user 6.0.1 LOIRE-1.0.2-160802-2002 1 dev-keys"

# Override Product Name for LineageOS
PRODUCT_NAME := lineage_kugo
PRODUCT_MODEL := Xperia X Compact
