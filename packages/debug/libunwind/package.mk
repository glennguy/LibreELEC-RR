# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libunwind"
PKG_VERSION="1.5.0"
PKG_VERSION="c720133faa27293a0e8e075ddf9ccefa55a2efa1"
#PKG_SHA256="90337653d92d4a13de590781371c604f9031cdb50520366aa1e3a91e1efb1017"
PKG_LICENSE="GPL"
PKG_SITE="http://www.nongnu.org/libunwind/"
#PKG_URL="http://download.savannah.nongnu.org/releases/libunwind/libunwind-${PKG_VERSION}.tar.gz"
PKG_URL="https://github.com/libunwind/libunwind/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="library to determine the call-chain of a program"
PKG_BUILD_FLAGS="+pic"
PKG_TOOLCHAIN="autotools"

PKG_CONFIGURE_OPTS_TARGET="--enable-static \
                           --disable-shared \
                           --disable-minidebuginfo \
                           --disable-documentation \
                           --disable-tests"

pre_configure_target() {
  :
}

makeinstall_target() {
  make DESTDIR=${SYSROOT_PREFIX} install
}
