#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=judyln
export DEVICE_SPECIFIED_COMMON=judyln-common
export VENDOR=lge
export VENDOR_SPECIFIED_COMMON=${VENDOR}

"./../../${VENDOR_SPECIFIED_COMMON}/${DEVICE_SPECIFIED_COMMON}/setup-makefiles.sh" "$@"
