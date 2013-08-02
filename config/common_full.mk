# Inherit common stuff
$(call inherit-product, vendor/tripndroid/config/common.mk)

# Inherit google stuff
$(call inherit-product, vendor/google/google-vendor.mk)

# Bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

# Bring in framework audio files
include frameworks/base/data/sounds/NewAudio.mk
include frameworks/base/data/sounds/AudioPackageNewWave.mk

# Include audio files
include vendor/tripndroid/config/tripndroid_audio.mk

# Optional packages
PRODUCT_PACKAGES += \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    PhaseBeam
