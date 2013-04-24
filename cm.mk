# Release name
PRODUCT_RELEASE_NAME := TinBoost

# Boot animation
TARGET_BOOTANIMATION_NAME := horizontal-1024x768

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/allwinner/tinboost/full_tinboost.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tinboost
PRODUCT_NAME := cm_tinboost
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := TinBoost
PRODUCT_MANUFACTURER := Allwinner

#Set build fingerprint / ID / Product Name etc
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=tinboost BUILD_FINGERPRINT="allwinner/tinboost/tinboost:4.0.4/IMM76I/330937:user/release-keys" PRIVATE_BUILD_DESC="tinboost-user 4.0.4 IMM76I 330937 release-keys"
