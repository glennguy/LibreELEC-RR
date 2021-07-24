# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2017-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="spdlog"
PKG_VERSION="1.9.0"
PKG_SHA256="9ad181d75aaedbf47c8881e7b947a47cac3d306997e39de24dba60db633e70a7"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/gabime/spdlog"
PKG_URL="https://github.com/gabime/spdlog/archive/v${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain libfmt"
PKG_LONGDESC="Very fast, header only, C++ logging library."
PKG_TOOLCHAIN="cmake"

PKG_CMAKE_OPTS_TARGET="-DCMAKE_CXX_STANDARD=14 -DCMAKE_CXX_EXTENSIONS:BOOL=OFF -DSPDLOG_FMT_EXTERNAL=ON -DSPDLOG_BUILD_EXAMPLE=OFF -DSPDLOG_BUILD_TESTS=OFF"
