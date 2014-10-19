#!/bin/sh
#
# 20141011


aclocal -I . --force
autoheader --force
automake --force --foreign --add-missing --foreign --add-missing
aclocal -I . --force
autoconf --force
