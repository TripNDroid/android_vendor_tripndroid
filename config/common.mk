PRODUCT_BRAND ?= tripndroid

SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.tripndroid.superuser

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    persist.sys.root_access=3 \
    ro.build.selinux=1 \
    sys.media.parser.ffmpeg=1

# Bootanimation
ifneq ($(TARGET_BOOTANIMATION_NAME),)
PRODUCT_COPY_FILES += \
    vendor/tripndroid/prebuilt/common/media/$(TARGET_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip
endif

# init.d
PRODUCT_COPY_FILES += \
    vendor/tripndroid/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/tripndroid/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/tripndroid/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/tripndroid/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/tripndroid/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/tripndroid/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/tripndroid/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# block stock OTAs
PRODUCT_COPY_FILES += \
    vendor/tripndroid/prebuilt/common/bin/otablock:system/bin/otablock

# su
PRODUCT_COPY_FILES += \
    vendor/tripndroid/prebuilt/common/root/init.superuser.rc:root/init.superuser.rc

# CM stuff
PRODUCT_COPY_FILES += \
    vendor/tripndroid/config/permissions/com.cyanogenmod.android.xml:system/etc/permissions/com.cyanogenmod.android.xml

# Required packages
PRODUCT_PACKAGES += \
    TDSettings \
    LatinIME \
    Superuser \
    su

# Optional packages
PRODUCT_PACKAGES += \
    TNDCamera \
    VoiceDialer \
    SoundRecorder \
    Basic \
    LockClock \
    CellBroadcastReceiver \
    PartnerBookmarksProvider \
    AndroidTerm

# TripNDroid ffmpeg integration
PRODUCT_PACKAGES += \
    libFFmpegExtractor \
    libstagefright_soft_ffmpegadec \
    libstagefright_soft_ffmpegvdec

# Custom packages
PRODUCT_PACKAGES += \
    libemoji \
    Launcher4 \
    audio_effects.conf \
    libcyanogen-dsp

PRODUCT_PACKAGES += \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml

# Extra tools
PRODUCT_PACKAGES += \
    static_busybox \
    openvpn \
    make_ext4fs \
    e2fsck \
    setup_fs \
    mke2fs \
    tune2fs \
    bash \
    nano \
    lsof \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

PRODUCT_PACKAGE_OVERLAYS += vendor/tripndroid/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/tripndroid/overlay/common

PRODUCT_VERSION_MAJOR := 2
PRODUCT_VERSION_MINOR := 0
PRODUCT_VERSION_MAINTENANCE := 0-B0

# Set to OFFICIAL
 CM_BUILDTYPE := OFFICIAL
 CM_VERSION := $(PRODUCT_VERSION_MAJOR)-$(PRODUCT_VERSION_MINOR)-$(PRODUCT_VERSION_MAINTENANCE)-$(shell date -u +%Y%m%d)-$(CM_BUILDTYPE)


PRODUCT_PROPERTY_OVERRIDES += \
  ro.tripndroid.version=$(CM_VERSION) \
  ro.modversion=$(CM_VERSION)

ADDITIONAL_DEFAULT_PROPERTIES += \
  ro.adb.secure=0 \
  ro.secure=0

-include $(WORKSPACE)/hudson/image-auto-bits.mk
