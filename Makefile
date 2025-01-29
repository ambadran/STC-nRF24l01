
# Prerequisites --------------------------------------------------------
#
# Besides make, his project requires: 
#
# - sdcc
# - stcgal-patched
# - minicom
# - doxygen

# Usage ----------------------------------------------------------------
#
# Build executable in release mode:
#   make
#
# Build executable in debug mode:
#   make BUILD_MODE=debug
#
# Build documentation:
#   make doc
#
# Upload executable to MCU:
#   make upload
#
# Open serial console in new window:
#   make console
#
# Clean project (remove all build files):
#   make clean

# Target MCU settings --------------------------------------------------

# Note: using a system clock around 24MHz works with all MCU
# having an internal RC oscillator.
MCU_FREQ_KHZ := 35000
STACK_SIZE := 112
XRAM_SIZE := 8192
FLASH_SIZE := 65024 
MEMORY_MODEL := --model-large
HAS_DUAL_DPTR := y

MCU_VARIANT = STC8H8K64U_SKDIP28

include ./Makefiles/inc_common1.mk
include ./Makefiles/inc_src.mk
include ./Makefiles/inc_common2.mk