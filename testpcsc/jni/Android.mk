# Android.mk.  Manually derived by running 'configure' using options
#     --disable-libhal --disable-libusb
# on Ubuntu 9.10 and capturing the actions taken by make.
#

# Copyright (C) 2010  Free Software Foundation, Inc.
# This Android.mk is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.


LOCAL_PATH := $(call my-dir)

common_cflags := \
	-DANDROID \
	-DHAVE_CONFIG_H

common_c_includes := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/includes/ 

include $(CLEAR_VARS)
LOCAL_MODULE := pcsclite
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := libpcsclite.so
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../jni/
include $(PREBUILT_SHARED_LIBRARY)

# ============ build testpcsc ==========================================
include $(CLEAR_VARS)
LOCAL_LDLIBS		:= -ldl
LOCAL_SHARED_LIBRARIES := libc libcrypto libdl pcsclite
LOCAL_PRELINK_MODULE	:= false


LOCAL_SRC_FILES		:= testpcsc.c
LOCAL_C_INCLUDES	:= $(common_c_includes)
LOCAL_CFLAGS		:= $(common_cflags)
LOCAL_MODULE_TAGS       := optional
LOCAL_MODULE		:= testpcsc

include $(BUILD_EXECUTABLE)
