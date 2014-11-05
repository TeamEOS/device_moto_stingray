#
# Copyright (C) 2013 The Android Open Source Project
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

# This file includes all definitions that apply to ALL wingray devices, and
# are also specific to wingray devices
#
# Everything in this directory will become public

$(call inherit-product,device/moto/wingray/device-common.mk)

DEVICE_PACKAGE_OVERLAYS := device/moto/stingray/overlay device/moto/wingray/overlay-common

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Get the long list of APNs
#PRODUCT_COPY_FILES += device/sample/etc/apns-conf_verizon.xml:system/etc/apns-conf.xml

# For data connection
PRODUCT_PACKAGES += \
    rild \
    nc
