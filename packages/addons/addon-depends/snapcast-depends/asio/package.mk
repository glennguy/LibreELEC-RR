# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="asio"
PKG_VERSION="1.19.0"
PKG_SHA256="86ab73282731fc5e385f78c4bbaccfe8ef864705b3d0da8688879a2cba55c3f6"
PKG_LICENSE="BSL"
PKG_SITE="http://think-async.com/Asio"
PKG_URL="https://github.com/chriskohlhoff/asio/archive/asio-${PKG_VERSION//./-}.zip"
PKG_SOURCE_DIR="asio-asio-${PKG_VERSION//./-}"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Asio C++ Library."
PKG_TOOLCHAIN="autotools"
PKG_BUILD_FLAGS="-sysroot"

PKG_CONFIGURE_OPTS_TARGET="--without-boost --without-openssl"

post_unpack() {
  mv ${PKG_BUILD}/asio/* ${PKG_BUILD}
}
