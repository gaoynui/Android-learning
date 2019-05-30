LOCAL_PATH:= $(call my-dir)

# Multichannel downmix effect library
include $(CLEAR_VARS)

LOCAL_LDLIBS += -llog

LOCAL_SRC_FILES:= \
	EffectDownmix.c

#LOCAL_SHARED_LIBRARIES := \
#	cutils log

#生成的库名libdownmix.so
LOCAL_MODULE:= libdownmix

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_RELATIVE_PATH := soundfx

LOCAL_C_INCLUDES := \
	$(call include-path-for, audio-effects) \
	$(call include-path-for, audio-utils)

#LOCAL_CFLAGS += -fvisibility=hidden

include $(BUILD_SHARED_LIBRARY)
