#
# Audio Files
#

ALARM_PATH := vendor/tripndroid/prebuilt/common/media/audio/alarms
NOTIFICATION_PATH := vendor/tripndroid/prebuilt/common/media/audio/notifications
RINGTONE_PATH := vendor/tripndroid/prebuilt/common/media/audio/ringtones
UI_PATH := vendor/tripndroid/prebuilt/common/media/audio/ui

# Alarms
PRODUCT_COPY_FILES += \
	$(ALARM_PATH)/CyanAlarm.ogg:system/media/audio/alarms/CyanAlarm.ogg \
	$(ALARM_PATH)/Instance.ogg:system/media/audio/alarms/Instance.ogg \
	$(ALARM_PATH)/NewDay.ogg:system/media/audio/alarms/NewDay.ogg

# Notifications
PRODUCT_COPY_FILES += \
	$(NOTIFICATION_PATH)/Ascend.ogg:system/media/audio/notifications/Ascend.ogg \
	$(NOTIFICATION_PATH)/CyanMail.ogg:system/media/audio/notifications/CyanMail.ogg \
	$(NOTIFICATION_PATH)/CyanMessage.ogg:system/media/audio/notifications/CyanMessage.ogg \
	$(NOTIFICATION_PATH)/CyanPing.ogg:system/media/audio/notifications/CyanPing.ogg \
	$(NOTIFICATION_PATH)/Gamma.ogg:system/media/audio/notifications/Gamma.ogg \
	$(NOTIFICATION_PATH)/MessageAlert.ogg:system/media/audio/notifications/MessageAlert.ogg

# Ringtones
PRODUCT_COPY_FILES += \
	$(RINGTONE_PATH)/Boxbeat.ogg:system/media/audio/ringtones/Boxbeat.ogg \
	$(RINGTONE_PATH)/Breeze.ogg:system/media/audio/ringtones/Breeze.ogg \
	$(RINGTONE_PATH)/CyanTone.ogg:system/media/audio/ringtones/CyanTone.ogg \
	$(RINGTONE_PATH)/GardenWaltz.ogg:system/media/audio/ringtones/GardenWaltz.ogg \
	$(RINGTONE_PATH)/MusicBox.ogg:system/media/audio/ringtones/MusicBox.ogg \
	$(RINGTONE_PATH)/Silmarillia.ogg:system/media/audio/ringtones/Silmarillia.ogg \
	$(RINGTONE_PATH)/Shocking.ogg:system/media/audio/ringtones/Shocking.ogg \
	$(RINGTONE_PATH)/UrsaMinor.ogg:system/media/audio/ringtones/UrsaMinor.ogg \
	$(RINGTONE_PATH)/QuietlyBrilliant.ogg:system/media/audio/ringtones/QuietlyBrilliant.ogg \
	$(RINGTONE_PATH)/Xperia.ogg:system/media/audio/ringtones/Xperia.ogg

