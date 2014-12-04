# Common Makefile

ROOT_PATH := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

all: mapnik_configure

mapnik_configure:
	$(CXX) --version
	cd $(ROOT_PATH)/mapnik;  ./configure --implicit-deps-changed --config=force configure HOST=arm-linux-androideabi BINDINGS=none CPP_TESTS=False CC=$(CC) CXX=$(CXX) CUSTOM_CFLAGS="--sysroot=$(ANDROID_SYSROOT)" 
	pwd
