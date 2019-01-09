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