# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2018-present Frank Hartung (supervisedthinking (@) gmail.com)

PKG_NAME="prboom"
PKG_VERSION="9814a1fbc45936a93046307ec41a95cb0e4b9efa"
PKG_SHA256="c1dd725c824b98438995d34ab7a62de4deb5fbf45be9273461b0c76ee4fc05ef"
PKG_LICENSE="GPL-2.0-or-later"
PKG_SITE="https://github.com/libretro/libretro-prboom"
PKG_URL="https://github.com/libretro/libretro-prboom/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain linux glibc"
PKG_LONGDESC="Port of prboom to libretro - plays Doom, Doom II, Final Doom and other Doom IWAD mods."
PKG_TOOLCHAIN="make"
PKG_BUILD_FLAGS="+lto -sysroot"

PKG_LIBNAME="prboom_libretro.so"
PKG_LIBPATH="${PKG_LIBNAME}"

PKG_MAKE_OPTS_TARGET="GIT_VERSION=${PKG_VERSION:0:7}"

pre_configure_target() {
  if [ "${ARCH}" = "arm" ]; then
    PKG_MAKE_OPTS_TARGET+=" platform=armv"

    # ARM NEON Support
    if target_has_feature neon; then
      PKG_MAKE_OPTS_TARGET+="-neon"
    fi
  fi
}

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
  mkdir -p ${INSTALL}/usr/share/prboom

  cp ${PKG_BUILD}/prboom.wad ${INSTALL}/usr/share/prboom
  cp -v ${PKG_LIBPATH} ${INSTALL}/usr/lib/libretro/
}

