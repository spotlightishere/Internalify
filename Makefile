include $(THEOS)/makefiles/common.mk

# TARGET = simulator:clang

TWEAK_NAME = Internalify

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

export ARCHS = armv7

SUBPROJECTS += MapsDebug SpringDebug
include $(THEOS_MAKE_PATH)/aggregate.mk
