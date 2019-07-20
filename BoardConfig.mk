#
# Copyright (C) 2019
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/samsung/beyondxq


# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Bootloader
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := msmnile
TARGET_BOOTLOADER_BOARD_NAME := beyondxq
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true
TARGET_NO_RADIOIMAGE := true

# Kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=2048 firmware_class.path=/vendor/firmware_mnt/image androidboot.usbcontroller=a600000.dwc3 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01e00000 --dt $(LOCAL_PATH)/dt.img

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 57671680
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 82825216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5976883200

# Filesystem
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Android Verified Boot
BOARD_AVB_ENABLE := true
ifeq ($(BOARD_AVB_ENABLE), true)
   BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
   BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
   BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
   BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1
endif

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FBE := true

# Recovery
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 25500
TW_DEFAULT_BRIGHTNESS := 15300
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_SUPERSU := true
TW_USE_NEW_MINADBD := true
TW_USE_TOOLBOX := true
TW_EXCLUDE_TWRPAPP := true
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
TW_INPUT_BLACKLIST := "hbtp_vm"

