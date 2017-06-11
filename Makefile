include $(THEOS)/makefiles/common.mk

export ARCHS = armv7

SUBPROJECTS += MapsDebug SpringDebug
include $(THEOS_MAKE_PATH)/aggregate.mk
