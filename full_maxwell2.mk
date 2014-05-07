#
# Copyright (C) 2014 The CyanogenMod Project
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

# This file is the build configuration for a full Android
# build for maxwell2lite hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and maxwell2lite, hence its name.

# Inherit from the common open source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit the maxwell2 definitions
$(call inherit-product, device/bq/maxwell2/device.mk)
$(call inherit-product, vendor/bq/maxwell2/maxwell2-vendor.mk)

# Inherit the rockchip-common definitions
$(call inherit-product, device/bq/rockchip-common/device-common.mk)
$(call inherit-product, vendor/bq/rockchip-common/rockchip-vendor.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := maxwell2
PRODUCT_DEVICE := maxwell2
PRODUCT_BRAND := bq
PRODUCT_MODEL := bq Maxwell 2
PRODUCT_MANUFACTURER := Rockchip
