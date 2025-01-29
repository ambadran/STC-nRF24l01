
# Define UNISTC_DIR, HAL_DIR, DRIVER_DIR, and MAKE_DIR -----------------
include /home/mr-a-717/.stc/uni-stc/makefiles/0-directories.mk

# Project settings -----------------------------------------------------
PROJECT_NAME := nrf24l01
PROJECT_FLAGS = -DBUILD_FOR_$(MCU_VARIANT)
BUILD_ROOT := build
CONSOLE_BAUDRATE := 115200
CONSOLE_PORT := /dev/ttyUSB0
ISP_PORT := /dev/ttyUSB0
CONSOLE_PORT2 := /dev/ttyUSB1
ISP_PORT2 := /dev/ttyUSB1

# Default is -a, override here if you have specific needs.
STCGAL_OPTIONS := -A rts -a
    
