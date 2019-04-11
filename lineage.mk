#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from fever device
$(call inherit-product, device/wiko/fever/device_fever.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920
TARGET_BOOTANIMATION_HALF_RES := true

PRODUCT_GMS_CLIENTID_BASE := android-fever

PRODUCT_DEVICE := fever
PRODUCT_NAME := lineage_fever
PRODUCT_BRAND := Wiko
PRODUCT_MANUFACTURER := Wiko
PRODUCT_MODEL := Wiko l5460
PRODUCT_RELEASE_NAME := fever

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=fever \
    PRIVATE_BUILD_DESC="full_l5460-user 6.0 MRA58K 1460597594 release-keys"

BUILD_FINGERPRINT := WIKO/l5460/l5460:6.0/MRA58K/1460597594:user/release-keys \
