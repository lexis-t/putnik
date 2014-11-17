
ROOT_PATH := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

sysroot:
	rm -Rf ./android-sysroot
	$(NDK)/build/tools/make-standalone-toolchain.sh --platform=android-9 --install-dir=./android-sysroot

third-party:
	mkdir third-party

libs: sysroot third-party
	export PATH=$(ROOT_PATH)/android-sysroot/arm-linux-androideabi/bin:$(NDK)/prebuilt/darwin-x86_64/bin:/usr/bin:/bin:/usr/sbin:/sbin; make -f $(ROOT_PATH)/third-party/Makefile -C third-party

.PHONY: sysroot libs
