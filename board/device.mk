# OTA assert
TARGET_OTA_ASSERT_DEVICE := A7010a48,LENOVO,k5fpr,a7010a48

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Configure jemalloc for low memory
MALLOC_SVELTE := true

BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
