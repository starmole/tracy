CFLAGS +=
CXXFLAGS := $(CFLAGS) -std=gnu++17
DEFINES += -DTRACY_NO_STATISTICS -DHAVE_ZLIB
INCLUDES := $(shell pkg-config --cflags capstone zlib)
LIBS += $(shell pkg-config --libs capstone zlib) -lpthread
PROJECT := import-chrome
IMAGE := $(PROJECT)-$(BUILD)

FILTER :=
include ../../../common/src-from-vcxproj.mk

include ../../../common/unix.mk
