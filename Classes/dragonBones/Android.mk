LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := dragonbones_static

LOCAL_MODULE_FILENAME := libdragonbones


LOCAL_SRC_FILES :=      /animation/Animation.cpp \
                        /animation/AnimationState.cpp \
                        /animation/TimelineState.cpp \
                        /animation/WorldClock.cpp \
                        /armature/Armature.cpp \
                        /armature/Bone.cpp \
                        /armature/Slot.cpp \
                        /core/BaseObject.cpp \
                        /event/EventObject.cpp \
                        /factory/BaseFactory.cpp \
                        /model/AnimationData.cpp \
                        /model/ArmatureData.cpp \
                        /model/DragonBonesData.cpp \
                        /model/FrameData.cpp \
                        /model/TimelineData.cpp \
                        /parser/DataParser.cpp \
                        /parser/JSONDataParser.cpp \
                        /cocos2dx/CCArmatureDisplay.cpp \
                        /cocos2dx/CCFactory.cpp \
                        /cocos2dx/CCSlot.cpp \
                        /cocos2dx/CCTextureAtlasData.cpp


LOCAL_C_INCLUDES :=     $(LOCAL_PATH)/ \
                        $(LOCAL_PATH)/animation \
                        $(LOCAL_PATH)/armature \
                        $(LOCAL_PATH)/core \
                        $(LOCAL_PATH)/event \
                        $(LOCAL_PATH)/factory \
                        $(LOCAL_PATH)/geom \
                        $(LOCAL_PATH)/model \
                        $(LOCAL_PATH)/parser \
                        $(LOCAL_PATH)/cocos2dx \

LOCAL_EXPORT_C_INCLUDES :=     $(LOCAL_PATH)/ \
                        $(LOCAL_PATH)/animation \
                        $(LOCAL_PATH)/armature \
                        $(LOCAL_PATH)/core \
                        $(LOCAL_PATH)/event \
                        $(LOCAL_PATH)/factory \
                        $(LOCAL_PATH)/geom \
                        $(LOCAL_PATH)/model \
                        $(LOCAL_PATH)/parser \
                        $(LOCAL_PATH)/cocos2dx \

LOCAL_WHOLE_STATIC_LIBRARIES += cocos2dx_static

LOCAL_CFLAGS += -Wno-psabi
LOCAL_EXPORT_CFLAGS += -Wno-psabi

include $(BUILD_STATIC_LIBRARY)

$(call import-module,.)
