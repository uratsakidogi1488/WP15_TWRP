#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), WP15)

# Включаем все подкаталоги
include $(call all-subdir-makefiles, $(LOCAL_PATH))

endif
