# Common Makefile

ROOT_PATH := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

all: mapnik_configure

mapnik_configure:
	$(CXX) --version
	cd $(ROOT_PATH)/mapnik; ./configure CC=$(CC) CXX=$(CXX) CUSTOM_CFLAGS="--sysroot=$(ANDROID_SYSROOT) -std=c++11" 
	pwd
