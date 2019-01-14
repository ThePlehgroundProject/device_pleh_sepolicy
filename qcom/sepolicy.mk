#
# This policy configuration will be used by all qcom products
# that inherit from Bootleggers
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/pleh/sepolicy/qcom/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/pleh/sepolicy/qcom/dynamic
else
BOARD_SEPOLICY_DIRS += \
    device/pleh/sepolicy/qcom/dynamic \
    device/pleh/sepolicy/qcom/vendor
endif
