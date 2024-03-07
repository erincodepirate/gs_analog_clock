ifeq ($(GNUSTEP_MAKEFILES),)
 GNUSTEP_MAKEFILES := $(shell gnustep-config --variable=GNUSTEP_MAKEFILES 2>/dev/null)
  ifeq ($(GNUSTEP_MAKEFILES),)
    $(warning )
    $(warning Unable to obtain GNUSTEP_MAKEFILES setting from gnustep-config!)
    $(warning Perhaps gnustep-make is not properly installed,)
    $(warning so gnustep-config is not in your PATH.)
    $(warning )
    $(warning Your PATH is currently $(PATH))
    $(warning )
  endif
endif
ifeq ($(GNUSTEP_MAKEFILES),)
 $(error You need to set GNUSTEP_MAKEFILES before compiling!)
endif

include $(GNUSTEP_MAKEFILES)/common.make

APP_NAME = AnClock
AnClock_HEADERS = Controller.h TimeView.h ClockView.h
AnClock_OBJC_FILES = main.m Controller.m TimeView.m ClockView.m
AnClock_RESOURCE_FILES = AnClockInfo.plist AnClock.gorm
AnClock_MAIN_MODEL_FILE = AnClock.gorm

include $(GNUSTEP_MAKEFILES)/application.make