# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2018-present Frank Hartung (supervisedthinking (@) gmail.com)

PKG_NAME="dolphin-libretro"
PKG_VERSION="71bdce82feb6e3ae4d94fed6bf5d6e2828826c1d"
PKG_SHA256="cac3f98d58abfa32afdca9f36726f129bc2ee6de9898cae19ea8c6fa8b478b43"
PKG_ARCH="x86_64"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/libretro/dolphin"
PKG_URL="https://github.com/libretro/dolphin/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain linux glibc systemd mesa xorg-server enet-system bluez lzo alsa-lib ffmpeg curl libpng zlib"
PKG_LONGDESC="Dolphin is a GameCube / Wii emulator, allowing you to play games for these two platforms on PC with improvements."
PKG_BUILD_FLAGS="+lto -sysroot"

PKG_LIBNAME="dolphin_libretro.so"
PKG_LIBPATH="${PKG_LIBNAME}"

pre_configure_target() {
  PKG_CMAKE_OPTS_TARGET="-D ENABLE_QT=OFF \
                         -D ENABLE_LTO=OFF \
                         -D LIBRETRO=ON"
}

pre_make_target() {
  # fix cross compiling
  find ${PKG_BUILD} -name flags.make -exec sed  -i "s:isystem :I:g" \{} \;
  find ${PKG_BUILD} -name build.ninja -exec sed -i "s:isystem :I:g" \{} \;
}

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
  cp -v ${PKG_LIBPATH} ${INSTALL}/usr/lib/libretro/
}
