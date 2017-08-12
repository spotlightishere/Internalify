include $(THEOS)/makefiles/common.mk

# TARGET = simulator:clang

TWEAK_NAME = SpringTheme
SpringTheme_FILES = $(wildcard *.xm) CommonMethods.m
SpringTheme_CFLAGS = -I../Headers -I.
SpringTheme_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

export ARCHS = armv7

include $(THEOS_MAKE_PATH)/aggregate.mk
