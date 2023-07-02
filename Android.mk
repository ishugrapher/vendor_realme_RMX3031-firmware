LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),RMX3031)
$(foreach f, $(notdir $(wildcard $(LOCAL_PATH)/*)), \
    $(call add-radio-file,$(f)))

include $(call all-makefiles-under,$(LOCAL_PATH))
endif
