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

# Required packages
PRODUCT_PACKAGES += \
    LatinIME \
    TripNHome

# Optional packages
PRODUCT_PACKAGES += \
    FileManager \
    Camera \
    Email \
    LiveWallpapers \
    libfftw3 \
    Music

# Filesystem
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    fsck.f2fs \
    mkfs.f2fs

# TripNDroid Optisound™
PRODUCT_PACKAGES += \
    OptiSound \
    liboptisound \
    libopticontrols \
    libsamplerate \
    libsoundmod

# FFMPEG
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

# TripNDroid Dolby audio enhancement
ifeq ($(filter true,$(TARGET_USE_TRIPNDROID_DOLBY_FEATURES)),)
PRODUCT_PACKAGES += \
    libhwdaphal \
    tripndroid.dolby.audio \
    dax-default.xml \
    media_codecs_dolby.xml \
    DolbyService
endif

# Build gapps
GAPPS_VARIANT := micro

# GMS fixup
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

# Root
PRODUCT_PACKAGES += \
    su

