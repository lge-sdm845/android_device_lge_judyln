#!/bin/bash
#
# SPDX-FileCopyrightText: 2016 The CyanogenMod Project
# SPDX-FileCopyrightText: 2017-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=judyln
export DEVICE_SPECIFIED_COMMON=judyln-common
export VENDOR=lge
export VENDOR_SPECIFIED_COMMON=${VENDOR}

"./../../${VENDOR_SPECIFIED_COMMON}/${DEVICE_SPECIFIED_COMMON}/setup-makefiles.sh" "$@"
