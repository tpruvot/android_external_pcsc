ifeq ($(TARGET_ARCH),arm)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libpcsclite
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_SRC_FILES := libpcsclite.a
LOCAL_MODULE_STEM := libpcsclite.a
include $(BUILD_PREBUILT)

include $(LOCAL_PATH)/testpcsc/Android.mk

endif
