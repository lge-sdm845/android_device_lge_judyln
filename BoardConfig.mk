#
# Copyright (C) 2018 The LineageOS Project
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

DEVICE_PATH := device/lge/judyln

# Inherit from common device tree
include device/lge/sdm845-common/BoardConfigCommon.mk

# Camera
TARGET_USES_YCRCB_VENUS_CAMERA_PREVIEW := true

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.hardware=judyln androidboot.fstab_suffix=judyln
TARGET_KERNEL_CONFIG := lineageos_judyln_defconfig

# Partitions
BOARD_USERDATAIMAGE_PARTITION_SIZE := 48708296704
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_VENDORIMAGE_PARTITION_SIZE := 1048576000

# inherit from the proprietary version
include vendor/lge/judyln/BoardConfigVendor.mk
