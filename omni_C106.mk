#
# Copyright (C) 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License. You may obtain a
# copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Product common configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8952

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Charger
PRODUCT_PACKAGES += \
	charger_res_images \
	charger

# Kernel
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/Image.gz-dtb:kernel


# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_C106
PRODUCT_DEVICE := C106
PRODUCT_BRAND := Coolpad
PRODUCT_MANUFACTURER := Coolpad
PRODUCT_MODEL := Coolpad Cool1 Dual

