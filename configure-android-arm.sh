
ANDROID_ARM_TOOLCHAIN=/opt/arm-linux-androideabi-4.8
WFLAGS="-Wall -Wno-uninitialized -Wno-unused -Wno-unused-parameter -Wno-sign-compare"

PATH="$ANDROID_ARM_TOOLCHAIN/bin:$PATH"

SYSROOT=$ANDROID_NDK_ROOT/platforms/android-16/arch-arm
export CFLAGS="--sysroot $SYSROOT"
export LDFLAGS="--sysroot $SYSROOT"

#export LDFLAGS="-L$ANDROID_ARM_TOOLCHAIN/sysroot/usr/lib -L$ANDROID_NDK_ROOT/platforms/android-16/arch-arm/usr/lib"
#CPPFLAGS="-I$ANDROID_ARM_TOOLCHAIN/sysroot/usr/include -I$ANDROID_NDK_ROOT/platforms/android-16/arch-arm/usr/include $WFLAGS"


CPPFLAGS="$CPPFLAGS $WFLAGS" \
./configure \
	--host=arm-linux-androideabi \
	--prefix=/system \
	--disable-utmp \
	--disable-utmpx \
	--disable-lastlog
