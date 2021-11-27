#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2018 The Xiaomi-SDM660 Project
#
# SPDX-License-Identifier: Apache-2.0
#

include device/xiaomi/wayne-common/BoardConfigCommon.mk

# Device Path
DEVICE_PATH := device/xiaomi/jasmine_sprout

# Manifest
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# TWRP Support
ifeq ($(BUILD_TWRP), true)
-include recovery/twrp/xiaomi/jasmine_sprout/twrp.mk
endif
