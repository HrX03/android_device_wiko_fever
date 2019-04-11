# OTA assert
TARGET_OTA_ASSERT_DEVICE := L5460,WIKO,fever,l5460

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Configure jemalloc for low memory
MALLOC_SVELTE := true

BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
