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

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

# Product properties
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    dalvik.vm.debug.alloc=0 \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.opa.eligible_device=true \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.storage_manager.enabled=true \
    persist.sys.root_access=3 \
    ro.build.selinux=1 \
    ro.com.android.dataroaming=false \
    persist.sys.dun.override=0

# Default properties
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.oem_unlock_supported=1 \
    ro.adb.secure=0 \
    ro.secure=0 \
    persist.service.adb.enable=1

# FFMPEG properties
PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# Backup
PRODUCT_COPY_FILES += \
    vendor/tripndroid/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/tripndroid/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/tripndroid/prebuilt/common/bin/50-base.sh:system/addon.d/50-base.sh \
    vendor/tripndroid/config/permissions/backup.xml:system/etc/sysconfig/backup.xml

# SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# TripNDroid init file
PRODUCT_COPY_FILES += \
    vendor/tripndroid/prebuilt/common/etc/init.local.rc:root/init.tripndroid.rc

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
    vendor/tripndroid/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# mkshrc
PRODUCT_COPY_FILES += \
    vendor/tripndroid/prebuilt/common/etc/mkshrc:system/etc/mkshrc

# Userinit & sysinit
PRODUCT_COPY_FILES += \
    vendor/tripndroid/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/tripndroid/prebuilt/common/bin/sysinit:system/bin/sysinit

# TripNDroid bootanimation
PRODUCT_COPY_FILES += \
    vendor/tripndroid/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip

# Extra boot jars
PRODUCT_BOOT_JARS += \
    telephony-ext

# TripNDroid Dolby audio enhancements
ifeq ($(filter true,$(TARGET_USE_TRIPNDROID_DOLBY_FEATURES)),)
PRODUCT_COPY_FILES += \
    vendor/tripndroid/prebuilt/common/dolby/soundfx/libhwdax.so:system/vendor/lib/soundfx/libhwdax.so \
    vendor/tripndroid/prebuilt/common/dolby/soundfx/libswdax.so:system/vendor/lib/soundfx/libswdax.so \
    vendor/tripndroid/prebuilt/common/dolby/lib/libdlbdapstorage.so:system/vendor/lib/libdlbdapstorage.so \
    vendor/tripndroid/prebuilt/common/dolby/lib/libdlbmemoryservice.so:system/vendor/lib/libdlbmemoryservice.so \
    vendor/tripndroid/prebuilt/common/dolby/lib/libstagefright_soft_ddpdec.so:system/vendor/lib/libstagefright_soft_ddpdec.so

PRODUCT_BOOT_JARS += \
    tripndroid.dolby.audio
endif

# Google media codecs
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Import vendor configuration
include vendor/tripndroid/config/packages.mk
include vendor/tripndroid/config/audio.mk

# Additional cache dir properties
ifeq ($(BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE),)
  ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.device.cache_dir=/data/cache
else
  ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.device.cache_dir=/cache
endif

PRODUCT_PACKAGE_OVERLAYS += vendor/tripndroid/overlay/common

# Import gapps
$(call inherit-product, vendor/google/google_vendor.mk)

# TripNDroid version
$(call inherit-product, vendor/tripndroid/config/version.mk)

