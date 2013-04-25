USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/motorola/tinboost/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 :=armeabi
TARGERt_ARCH_VARIANT := cpu-a-neon
TARGET_BOOTLOADER_BOARD_NAME := tinboost
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USE_QCOM_PMEM := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true


BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom loglevel=1
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00540000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00700000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08f00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a500000
BOARD_FLASH_BLOCK_SIZE := 131072

## PARTITION LAYOUT/INFO ##
BOARD_DATA_DEVICE := /dev/block/mtdblock12
BOARD_DATA_FILESYSTEM := yaffs2
BOARD_DATA_FILESYSTEM_OPTIONS := rw,nosuid,nodev,noatime,nodiratime 0 0
BOARD_SYSTEM_DEVICE := /dev/block/mtdblock11
BOARD_SYSTEM_FILESYSTEM := yaffs2
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw,noatime,nodiratime 0 0
BOARD_CACHE_DEVICE := /dev/block/mtdblock9
BOARD_CACHE_FILESYSTEM := yaffs2
BOARD_CACHE_FILESYSTEM_OPTION := rw,nosuid,nodev,noatime,nodiratime 0 0
BOARD_MISC_DEVICE := /dev/block/mtdblock16
BOARD_BOOT_DEVICE := /dev/block/mtdblock10
BOARD_RECOVERY_DEVICE := /dev/block/mtdblock13
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/vold/179:1

TARGET_PREBUILT_KERNEL := kernel/motorola/tinboost/kernel
TARGET_KERNEL_CONFIG := cyanogenmod_tinboost_defconfig 

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
