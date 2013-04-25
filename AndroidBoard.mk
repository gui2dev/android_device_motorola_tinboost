LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)


LOCAL_MODULE := init.goldfish.rc
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := /files/init.goldfish.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.rc
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := /files/init.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ueventd.rc
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := /files/ueventd.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.qcom.rc
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := /files/init.qcom.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.target.rc
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := /files/init.target.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ueventd.goldfish.rc
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := /files/ueventd.goldfish.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.qcom.sh
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := /files/init.qcom.sh
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)

# include the non-open-source counterpart to this file
-include vendor/motorola/tinboost/AndroidBoardVendor.mk
