# Android.mk for vold_decrypt (minimal, patched to make init.recovery.vold_decrypt.rc a prebuilt ETC)
# Path: bootable/recovery/crypto/vold_decrypt/Android.mk

# (This is a minimal file added to ensure the init rc is treated as ETC when building
#  in environments where this file is used. If the full Android.mk exists upstream,
#  this file only contains the prebuilt block required by the patch.)

include $(CLEAR_VARS)
# If there is a shared library or other build above, include it here as needed
# include $(BUILD_SHARED_LIBRARY)

# Prebuilt init.recovery.vold_decrypt.rc
include $(CLEAR_VARS)
LOCAL_MODULE := init.recovery.vold_decrypt.rc
# Changed from RECOVERY_EXECUTABLES to ETC to avoid unexpected module class errors
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := init.recovery.vold_decrypt.rc
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)
include $(BUILD_PREBUILT)
