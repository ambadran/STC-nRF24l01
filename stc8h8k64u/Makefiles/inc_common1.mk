
# Define UNISTC_DIR, HAL_DIR, DRIVER_DIR, and MAKE_DIR -----------------
include /Users/ambadran717/.stc/uni-stc/makefiles/0-directories.mk

# Project settings -----------------------------------------------------
PROJECT_NAME := stc8h8k64u
PROJECT_FLAGS = -DBUILD_FOR_$(MCU_VARIANT)
BUILD_ROOT := build
CONSOLE_BAUDRATE := 115200
CONSOLE_PORT := /dev/tty.usbserial-0001
ISP_PORT := /dev/tty.usbserial-0001
# Default is -a, override here if you have specific needs.
STCGAL_OPTIONS := -A rts -a
    
