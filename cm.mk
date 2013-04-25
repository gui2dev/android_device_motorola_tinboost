## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := tinboost

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/tinboost/device_tinboost.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tinboost
PRODUCT_NAME := cm_tinboost
PRODUCT_BRAND := motorola
PRODUCT_MODEL := tinboost
PRODUCT_MANUFACTURER := motorola
