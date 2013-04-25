$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/motorola/tinboost/tinboost-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/tinboost/overlay

LOCAL_PATH := device/motorola/tinboost
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_PACKAGES += \
    hostap \
    librs_jni \
    gralloc.msm7k \
    overlay.default \
    screencap \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    com.android.future.usb.accessory \
    hostapd
    
PRODUCT_PACKAGES += \
    sensors.default \
    lights.msm7k

#kernel modules
PRODUCT_COPY_FILES += \
    device/motorola/tinboost/files/lib/modules/ansi_cprng.ko:root/lib/modules/ansi_cprng.ko \
    device/motorola/tinboost/files/lib/modules/bcm4329.ko:root/lib/modules/bcm4329.ko \
    device/motorola/tinboost/files/lib/modules/dal_remotetest.ko:root/lib/modules/dal_remotetest.ko \
    device/motorola/tinboost/files/lib/modules/evbug.ko:root/lib/modules/evbug.ko \
    device/motorola/tinboost/files/lib/modules/gspca_main.ko:root/lib/modules/gspca_main.ko \
    device/motorola/tinboost/files/system/lib/modules/lcd.ko:system/lib/modules/lcd.so \
    device/motorola/tinboost/files/system/lib/modules/librasdioif.ko:system/lib/modules/librasdioif.so \
    device/motorola/tinboost/files/system/lib/modules/oprofile.ko:system/lib/modules/oprofile.so \
    device/motorola/tinboost/files/system/lib/libdiag.so:system/lib/libdiag.so \
    device/motorola/tinboost/files/system/lib/modules/test_noncb_oemrapi.ko:system/lib/modules/test_noncb_oemrapi.so

# Fix Logcat / Misc
PRODUCT_COPY_FILES += \
    device/motorola/tinboost/files/logcat:system/bin/logcat \
    vendor/motorola/tinboost/proprietary/lib/libgsl.so:system/lib/libgsl.so

# system/etc/init's
PRODUCT_COPY_FILES += \
    device/motorola/tinboost/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/motorola/tinboost/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/motorola/tinboost/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/motorola/tinboost/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/motorola/tinboost/init.qcom.composition_type.sh:system/etc/init.qcom.composition_type.sh \
    device/motorola/tinboost/init.brcm.bt.sh:system/etc/init.brcm.bt.sh \
    device/motorola/tinboost/init.goldfish.sh:system/etc/init.goldfish.sh \
    device/motorola/tinboost/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/motorola/tinboost/init.qcom.scrstate_scaling.sh:system/etc/init.scrstate_scaling.sh 


# wifi files
PRODUCT_COPY_FILES += \
    device/motorola/tinboost/files/egl.cfg:system/lib/egl/egl.cfg \
    device/samsung/chief/files/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf 

# video drivers
PRODUCT_COPY_FILES += \
    device/motorola/tinboost/files/system/etc/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    device/motorola/tinboost/files/system/etc/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw 


# misc firmware
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=15 \
    ro.telephony.default_network=4 \
    ro.com.google.clientidbase=android-sprint-us \
    ro.cdma.home.operator.numeric=310120 \
    ro.cdma.home.operator.alpha=Sprint \
    net.cdma.pppd.authtype=require-pap \
    net.cdma.pppd.user=user[SPACE]SprintNextel \
    net.cdma.datalinkinterface=/dev/ttyCDMA0 \
    net.interfaces.defaultroute=cdma \
    net.cdma.ppp.interface=ppp0 \
    net.connectivity.type=CDMA1 \
    mobiledata.interfaces=ppp0,uwbr0 \
    ro.telephony.ril_class=motorola \
    ro.ril.motorola_cdma=true


# WiMAX Property setting for checking WiMAX interface
PRODUCT_PROPERTY_OVERRIDES += \
    ro.wimax.interface=uwbr0 \
    net.tcp.buffersize.wimax=4092,87380,1520768,4092,16384,1520768

# misc for now
PRODUCT_COPY_FILES += \
    device/motorola/tinboost/files/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/motorola/tinboost/files/system/bin/qmuxd:system/bin/qmuxd \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip \
    device/motorola/tinboost/files/system/etc/loc_parameter.ini:system/etc/loc_parameter.ini 

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_tinboost
PRODUCT_DEVICE := tinboost


PRODUCT_PROPERTY_OVERRIDES := \
wifi.interface=eth0\
wifi.supplicant_scan_interval=15\
ril.subscription.types=NV

# Perfomance tweaks and misc
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heapsize=48m \
    persist.sys.use_dithering=1 \
    ro.compcache.default=0

# Properties taken from build.prop
PRODUCT_PROPERTY_OVERRIDES += \
ro.setupwizard.mode=DISABLED \
ro.com.google.gmsversion=2.3_r9

# Chief uses medium-density artwork where available
PRODUCT_LOCALES += mdpi
