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
#

PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/rz-edv.de/security/releasekey
PRODUCT_PROPERTY_OVERRIDES := \
        net.dns1=85.214.20.141 \
        net.dns2=213.73.91.35

GAPPS_VARIANT := pico
GAPPS_FORCE_PACKAGE_OVERRIDES := true
GAPPS_FORCE_MATCHING_DPI := true
GAPPS_EXCLUDED_PACKAGES := CalSync

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mido device
$(call inherit-product, device/xiaomi/vince/device.mk)

# Device identifier. This must come after all inclusions
TARGET_VENDOR := Xiaomi
PRODUCT_DEVICE := vince
PRODUCT_NAME := full_vince
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 5 Plus
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_PACKAGES += Snap
PRODUCT_PACKAGES += K9Mail
PRODUCT_PACKAGES += BarcodeScanner
PRODUCT_PACKAGES += F-Droid
PRODUCT_PACKAGES += FDroidPE
PRODUCT_PACKAGES += Amaze
PRODUCT_PACKAGES += DAVdroid
PRODUCT_PACKAGES += OpenTasks
PRODUCT_PACKAGES += KeePassDroid
PRODUCT_PACKAGES += Conversations
PRODUCT_PACKAGES += SatStat
PRODUCT_PACKAGES += Nextcloud
PRODUCT_PACKAGES += Wi-FiPrivacyPolice
PRODUCT_PACKAGES += Eleven
PRODUCT_PACKAGES += YahooWeatherProvider
PRODUCT_PACKAGES += UnifiedNlp
PRODUCT_PACKAGES += LocalGsmNlpBackend
PRODUCT_PACKAGES += LocalWifiNlpBackend
PRODUCT_PACKAGES += ULogger
PRODUCT_PACKAGES += OsmAnd
PRODUCT_PACKAGES += MaterialPlayer
PRODUCT_PACKAGES += SWEBrowser
PRODUCT_PACKAGES += HumbleBundle
PRODUCT_PACKAGES += OpenCamera

#OpenGapps
$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)
