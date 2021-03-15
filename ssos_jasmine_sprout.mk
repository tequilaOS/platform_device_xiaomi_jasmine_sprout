#
# Copyright (C) 2018 The Xiaomi-SDM660 Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit device configuration
$(call inherit-product, device/xiaomi/jasmine_sprout/device.mk)

# Inherit ShapeShiftOS product configuration
$(call inherit-product, vendor/ssos/config/common_full_phone.mk)

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Build Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="jasmine-user 9 PKQ1.180904.001 V10.0.9.0.PDIMIXM release-keys" \
    BUILD_FINGERPRINT="xiaomi/wayne/wayne:8.1.0/OPM1.171019.011/V9.5.11.0.ODCCNFA:user/release-keys"

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

# Density
TARGET_SCREEN_DENSITY := 400

# Device identifier
PRODUCT_BRAND := xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := ssos_jasmine_sprout
PRODUCT_DEVICE := jasmine_sprout
PRODUCT_MODEL := Mi A2

# Inherit ShapeShiftOS Official build stuff.
SSOS_BUILD_TYPE := OFFICIAL
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_PRODUCT_PROPERTIES += \
  ro.ssos.cpu=SDM660

# Gapps
USE_GAPPS := true
IS_PHONE := true
TARGET_GAPPS_ARCH := arm64

# TWRP Support
BUILD_TWRP := true
