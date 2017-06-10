include $(THEOS)/makefiles/common.mk

# TARGET = simulator:clang

TWEAK_NAME = SpringDebug
SpringDebug_FILES = *.xm
SpringDebug_CFLAGS = -I../Headers

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

export ARCHS = armv7

include $(THEOS_MAKE_PATH)/aggregate.mk
