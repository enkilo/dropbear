if [ ! -e configure -o ! -e config.h.in ]; then
	autoreconf --force --verbose
fi

ANDROID_ARM_TOOLCHAIN=/opt/arm-linux-androideabi-4.8

CC=arm-linux-androideabi-gcc
WFLAGS="-Wall -Wno-uninitialized -Wno-unused -Wno-unused-parameter -Wno-sign-compare"

PATH="$ANDROID_ARM_TOOLCHAIN/bin:$PATH"

SYSROOT=$ANDROID_NDK_ROOT/platforms/android-16/arch-arm
export CFLAGS="--sysroot $SYSROOT"
export LDFLAGS="--sysroot $SYSROOT"

#export LDFLAGS="-L$ANDROID_ARM_TOOLCHAIN/sysroot/usr/lib -L$ANDROID_NDK_ROOT/platforms/android-16/arch-arm/usr/lib"
#CPPFLAGS="-I$ANDROID_ARM_TOOLCHAIN/sysroot/usr/include -I$ANDROID_NDK_ROOT/platforms/android-16/arch-arm/usr/include $WFLAGS"


CPPFLAGS="$CPPFLAGS $WFLAGS" \
./configure \
	--build=`gcc -dumpmachine` \
	--host=`$CC -dumpmachine` \
	--prefix=/system \
	--enable-utmp \
	--disable-pututline \
	--disable-utmpx \
	--disable-syslog \
	--disable-lastlog \
	--enable-openpty \
	--disable-shadow

echo "#define HAVE_OPENPTY 1" >>config.h
