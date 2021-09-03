# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="stress-ng"
PKG_VERSION="0.13.01"
PKG_SHA256="f37f739e4d15343360a47980b67dc8b2a6bf3d4d3ef727d55e2dd99a0b64f9ea"
PKG_LICENSE="GPLv2"
PKG_SITE="https://kernel.ubuntu.com/~cking/stress-ng/"
PKG_URL="https://kernel.ubuntu.com/~cking/tarballs/stress-ng/stress-ng-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain attr keyutils libaio libcap zlib"
PKG_LONGDESC="stress-ng will stress test a computer system in various selectable ways"
PKG_BUILD_FLAGS="-sysroot"
