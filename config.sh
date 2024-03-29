#!/bin/sh
#
# Configuration for the module to compile, the Swift toolchain, and
# the compiler and linker flags to use.
#
VER=2.0
JAZZY_VER=2.42.8
MOD=GdkPixBuf
Mod=GdkPixbuf
MODULE=${MOD}-$VER
Module=${Mod}-$VER
module=gdk-pixbuf-$VER
if [ -z "$BUILD_DIR" ]; then
  if `pwd -P | grep -q Dropbox` ; then
    export BUILD_DIR="/tmp/.build-$Module"
  else
    export BUILD_DIR="$PWD/.build"
  fi
fi
export PATH="${GIR2SWIFT_PATH}:${BUILD_DIR}/checkouts/gir2swift/.build/release:${BUILD_DIR}/checkouts/gir2swift/.build/debug:${PATH}:$PWD/.build/checkouts/gir2swift/.build/release:$PWD/.build/checkouts/gir2swift/.build/debug:${PATH}:/usr/local/opt/ruby/bin:`echo /usr/local/lib/ruby/gems/*/bin | tr ' ' '\n' | tail -n1`:${PATH}:`echo /var/lib/gems/*/gems/jazzy-*/bin/ | tr ' ' '\n' | tail -n1`:/usr/local/bin"
export PKG_CONFIG_PATH=/usr/local/opt/libffi/lib/pkgconfig:${PKG_CONFIG_PATH}
LINKFLAGS=`pkg-config --libs $module gio-unix-$VER glib-$VER | tr ' ' '\n' | sed -e 's/^/-Xlinker /' -e 's/-Wl,//' | tr '\n' ' ' | sed -e 's/-Xcc[ 	]*-Xlinker/-Xlinker/g' -e 's/-Xlinker[ 	]*-Xcc/-Xcc/g' -e 's/-Xlinker[ 	]*--export-dynamic//g' -e 's/-Xlinker[ 	]*-Xlinker/-Xlinker/g' -e 's/-Xcc *$//' -e 's/-Xlinker *$//'`
CCFLAGS=`pkg-config --cflags $module  gio-unix-$VER glib-$VER | tr ' ' '\n' | sed 's/^/-Xcc /' | tr '\n' ' ' | sed -e 's/-Xcc[ 	]*-Xlinker/-Xlinker/g' -e 's/-Xlinker[ 	]*-Xcc/-Xcc/g' -e 's/-Xlinker[ 	]*--export-dynamic//g' -e 's/-Xlinker[ 	]*-Xlinker/-Xlinker/g' -e 's/-Xcc *$//' -e 's/-Xlinker *$//'`
TAC="tail -r"
if which tac >/dev/null 2>&1 ; then
   TAC=tac
   else if which gtac >/dev/null 2>&1 ; then
	TAC=gtac
   fi
fi
JAZZY_B=`echo $CCFLAGS $LINKFLAGS | sed 's/  */,/g'`
