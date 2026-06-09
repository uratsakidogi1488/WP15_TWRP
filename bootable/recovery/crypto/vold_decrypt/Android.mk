LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := init.recovery.vold_decrypt.rc
# Ensure init rc is treated as ETC (init script)
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := init.recovery.vold_decrypt.rc
LOCAL_MODULE_SUFFIX := .rc
# Install into recovery root's init directory
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT)/init
LOCAL_MODULE_TAGS := optional
include $(BUILD_PREBUILT)
