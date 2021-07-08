# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2020-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libuv"
PKG_VERSION="1.41.1"
PKG_SHA256="62c29d1d76b0478dc8aaed0ed1f874324f6cd2d6ff4cb59a44026c09e818cd53"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/libuv/libuv"
PKG_URL="https://github.com/libuv/libuv/archive/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Multi-platform support library with a focus on asynchronous I/O"

PKG_CMAKE_OPTS_TARGET="-DLIBUV_BUILD_TESTS=OFF"
