#
# Copyright (C) 2017 TripNDroid Mobile Engineering
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

# official TripNDroid build
-include vendor/tripndroid-official/setup.mk

# Set TripNDroid version
ANDROID_VERSION := 7.1.2
ANDROID_NAME := Nougat
TRIPNDROID_VERSION_N := v1.0

ifndef TRIPNDROID_BUILD_TYPE
    TRIPNDROID_BUILD_TYPE := UNOFFICIAL
endif

# Set all versions
TRIPNDROID_VERSION := TRIPNDROID_$(TRIPNDROID_BUILD)_$(ANDROID_NAME)-$(ANDROID_VERSION)_$(TRIPNDROID_VERSION_N)-$(TRIPNDROID_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.tripndroid.version=$(TRIPNDROID_VERSION)

