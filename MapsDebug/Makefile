include $(THEOS)/makefiles/common.mk

# TARGET = simulator:clang

TWEAK_NAME = MapsDebug
MapsDebug_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Maps"

export ARCHS = armv7

include $(THEOS_MAKE_PATH)/aggregate.mk
