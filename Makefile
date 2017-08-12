include $(THEOS)/makefiles/common.mk

export ARCHS = armv7

SUBPROJECTS += MapsDebug SpringTheme
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "killall -9 SpringBoard"
