#
# Copyright (C) 2019 The LineageOS Project
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

# Include common Stuff
include device/samsung/exynos3475-common/BoardCommonConfig.mk

DEVICE_PATH := device/samsung/on5ltetmo

# Kernel config
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-linux-androideabi-4.9/bin
TARGET_KERNEL_SOURCE := kernel/samsung/exynos3475
TARGET_KERNEL_CONFIG := lineage-on5ltetmo_defconfig
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4831838208
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_PARTITION_SIZE    := 202211328
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE  := ext4
BOARD_HAS_LARGE_FILESYSTEM := true

# Recovery
TARGET_OTA_ASSERT_DEVICE := on5ltetmo

# RIL
BOARD_VENDOR := samsung
BOARD_MODEM_TYPE := tss310
BOARD_PROVIDES_LIBRIL := true

# RIL.java overwrite
BOARD_RIL_CLASS := ../../../$(DEVICE_PATH)/ril

# Include path
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include