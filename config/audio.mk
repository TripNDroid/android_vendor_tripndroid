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

ALARM_PATH := vendor/tripndroid/prebuilt/common/audio/alarms
NOTIFICATION_PATH := vendor/tripndroid/prebuilt/common/audio/notifications
RINGTONE_PATH := vendor/tripndroid/prebuilt/common/audio/ringtones

# Alarms
PRODUCT_COPY_FILES += \
    $(ALARM_PATH)/Softly.ogg:system/media/audio/alarms/Softly.ogg \
    $(ALARM_PATH)/Slumber.ogg:system/media/audio/alarms/Slumber.ogg

# Notifications
PRODUCT_COPY_FILES += \
    $(NOTIFICATION_PATH)/Message_Alert.ogg:system/media/audio/notifications/Message_Alert.ogg \
    $(NOTIFICATION_PATH)/Notification.ogg:system/media/audio/notifications/Notification.ogg

# Ringtones
PRODUCT_COPY_FILES += \
    $(RINGTONE_PATH)/Breeze.ogg:system/media/audio/ringtones/Breeze.ogg \
    $(RINGTONE_PATH)/DutchDance.ogg:system/media/audio/ringtones/DutchDance.ogg \
    $(RINGTONE_PATH)/Jobs.ogg:system/media/audio/ringtones/Jobs.ogg \
    $(RINGTONE_PATH)/Tunia.ogg:system/media/audio/ringtones/Tunia.ogg

# System properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Breeze.ogg \
    ro.config.notification_sound=Message_Alert.ogg \
    ro.config.alarm_alert=Slumber.ogg

