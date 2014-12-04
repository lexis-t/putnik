
ROOT_PATH := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

sysroot:
	rm -Rf ./android-sysroot
	$(NDK)/build/tools/make-standalone-toolchain.sh --platform=android-9 --install-dir=./android-sysroot --toolchain=arm-linux-androideabi-4.8

third-party:
	mkdir third-party

libs: sysroot third-party
	export PATH=$(abspath ./android-sysroot/arm-linux-androideabi/bin):$(NDK)/prebuilt/darwin-x86_64/bin:/usr/bin:/bin:/usr/sbin:/sbin; export CC=gcc; export CXX=g++; export ANDROID_SYSROOT=$(abspath ./android-sysroot); export HOST=arm-linux-androideabi; make -f $(ROOT_PATH)/third-party/Makefile -C third-party

.PHONY: sysroot libs
