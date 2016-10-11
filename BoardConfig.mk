# include proprietary libraries and binaries
-include vendor/zopo/zp951/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := Auxus_PRIME_201

# needed for mass storage mode
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
  
#extracted from /proc/partinfo
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1107296256
BOARD_CACHEIMAGE_PARTITION_SIZE := 444596224
BOARD_FLASH_BLOCK_SIZE := 131072

# build kernel from source
TARGET_KERNEL_SOURCE := kernel/zopo/zp951
TARGET_KERNEL_CONFIG := zp951_cyanogenmod12_1_defconfig
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_RAMDISK_OFFSET := 0x03f88000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_TAGS_OFFSET := 0x0df88000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --second_offset 0x00e88000 --tags_offset 0x0df88000 --board Bule
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_PREBUILT_KERNEL := device/zopo/zp951/prebuilt/kernel


BOARD_HAS_NO_SELECT_BUTTON := true

# system.prop
TARGET_SYSTEM_PROP := device/zopo/zp951/system.prop

# CyanogenMod Hardware Hooks
BOARD_HARDWARE_CLASS := device/zopo/zp951/cmhw/

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/zopo/zp951/bluetooth
BOARD_EGL_CFG := device/zopo/zp951/configs/egl.cfg

# recovery
#TARGET_RECOVERY_INITRC := device/elephone/p8000/recovery/init.mt6753.rc
TARGET_RECOVERY_FSTAB := device/zopo/zp951/recovery/root/fstab.mt6753
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness\"

# use power button for selections in recovery
BOARD_HAS_NO_SELECT_BUTTON := true

# Prebuilt Kernel
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
$(shell mkdir -p $(OUT)/target/product/zp951/kernel)
