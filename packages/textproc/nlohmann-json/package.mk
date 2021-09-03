# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2019-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="nlohmann-json"
PKG_VERSION="3.10.2"
PKG_SHA256="081ed0f9f89805c2d96335c3acfa993b39a0a5b4b4cef7edb68dd2210a13458c"
PKG_LICENSE="MIT"
PKG_SITE="https://nlohmann.github.io/json/"
PKG_URL="https://github.com/nlohmann/json/archive/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="JSON for Modern C++"
PKG_TOOLCHAIN="cmake"

PKG_CMAKE_OPTS_TARGET="-DBUILD_TESTING:BOOL=OFF"
