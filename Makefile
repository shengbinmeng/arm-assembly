
#
# For Android
#

TOOLCHAIN_PREFIX := $(ANDROID_NDK)/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/bin/arm-linux-androideabi
CC := $(TOOLCHAIN_PREFIX)-gcc
SYSROOT := $(ANDROID_NDK)/platforms/android-18/arch-arm
CFLAGS += --sysroot=$(SYSROOT) -I./android/include -fPIC
LDFLAGS += --sysroot=$(SYSROOT) -L./android/lib -pie

#
# Source files
#

SRCS := main.c
ASMS := add.S

#
# Targets
#

OBJS := $(SRCS:%.c=%.o)
OBJS += $(ASMS:%.S=%.o)

sum: $(OBJS)
	$(CC) -o $@ $(OBJS) $(LDFLAGS)
	
.PHONY: clean
clean:
	rm -f sum $(OBJS)
