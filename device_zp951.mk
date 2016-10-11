$(call inherit-product, device/mediatek/mt6753_common/device_mt6753.mk)
$(call inherit-product, vendor/zopo/zp951/zp951-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/zopo/zp951/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := zp951

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/zopo/zp951/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif



# init.rc's
PRODUCT_COPY_FILES += \
	device/zopo/zp951/rootdir/init.mt6735.rc:root/init.mt6735.rc \
	device/zopo/zp951/rootdir/init.ssd.rc:root/init.ssd.rc \
	device/zopo/zp951/rootdir/init.xlog.rc:root/init.xlog.rc \
	device/zopo/zp951/rootdir/init.rc:root/init.rc \
	device/zopo/zp951/rootdir/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
	device/zopo/zp951/rootdir/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
	device/zopo/zp951/rootdir/init.project.rc:root/init.project.rc \
	device/zopo/zp951/rootdir/init.modem.rc:root/init.modem.rc \
	device/zopo/zp951/recovery/root/fstab.mt6753:root/fstab.mt6735  \
	device/zopo/zp951/rootdir/ueventd.mt6735.rc:root/ueventd.mt6735.rc \
	device/zopo/zp951/rootdir/factory_init.rc:root/factory_init.rc \
	device/zopo/zp951/rootdir/factory_init.project.rc:root/factory_init.project.rc \
	device/zopo/zp951/rootdir/meta_init.project.rc:root/meta_init.project.rc \
	device/zopo/zp951/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
	device/zopo/zp951/rootdir/meta_init.rc:root/meta_init.rc 

# TWRP thanks to Hanuma50
PRODUCT_COPY_FILES += device/zopo/zp951/recovery/twrp.fstab:recovery/root/etc/twrp.fstab

# Smart Cover (thanks to fire855)
PRODUCT_PACKAGES += \
    SmartCover

include device/zopo/zp951/smartcover/SmartCover/Android.mk


PRODUCT_COPY_FILES += \
    	device/zopo/zp951/rootdir/etc/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \


$(call inherit-product, build/target/product/full.mk)
