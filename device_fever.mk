LOCAL_PATH := device/wiko/fever

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Manifest
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/manifest.xml:system/vendor/manifest.xml

# Lights
PRODUCT_PACKAGES += \
    lights.mt6753

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_device.xml:system/vendor/etc/audio_device.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:system/vendor/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:/system/vendor/etc/a2dp_audio_policy_configuration.xml

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/vendor/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_mediatek_video.xml:system/vendor/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/vendor/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/vendor/etc/media_profiles.xml

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.mt6735:root/fstab.mt6735 \
    $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/init.mt6735.rc:root/init.mt6735.rc \
    $(LOCAL_PATH)/rootdir/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
    $(LOCAL_PATH)/rootdir/ueventd.mt6735.rc:root/ueventd.mt6735.rc

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediaextractor.policy:system/vendor/etc/seccomp_policy/mediaextractor.policy \
    $(LOCAL_PATH)/seccomp/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy

# Shims
TARGET_LD_SHIM_LIBS := /system/lib/liblog.so|libmtkshim_log.so:/system/lib64/liblog.so|libmtkshim_log.so:/system/vendor/lib/hw/audio.primary.$(TARGET_BOARD_PLATFORM).so|libmtkshim_audio.so:/system/vendor/lib64/hw/audio.primary.$(TARGET_BOARD_PLATFORM).so|libmtkshim_audio.so:/system/lib/libui.so|libmtkshim_ui.so:/system/lib64/libui.so|libmtkshim_ui.so:/system/lib/libgui.so|libmtkshim_gui.so:/system/lib64/libgui.so|libmtkshim_gui.so:/system/vendor/lib/libfeatureio.so|libmtkshim_camera.so:/system/vendor/lib64/libfeatureio.so|libmtkshim_camera.so:/system/vendor/lib/libcam.camnode.so|libmtkshim_camera.so:/system/vendor/lib64/libcam.camnode.so|libmtkshim_camera.so

# Dalvik/HWUI
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Common stuff
$(call inherit-product, $(LOCAL_PATH)/mad/common.mk)

# Vendor
$(call inherit-product, vendor/wiko/fever/fever-vendor.mk)

