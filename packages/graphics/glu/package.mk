# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2019-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="glu"
PKG_VERSION="9.0.2"
PKG_SHA256="19d48400a12cc3095c6662691ee3367a70d7879d50c772ed6e61360307a0db2f"
PKG_LICENSE="OSS"
PKG_SITE="https://gitlab.freedesktop.org/mesa/glu/"
PKG_URL="https://gitlab.freedesktop.org/mesa/glu/-/archive/master/${PKG_NAME}-${PKG_VERSION}.tar.bz2"
PKG_DEPENDS_TARGET="toolchain mesa"
PKG_NEED_UNPACK="$(get_pkg_directory mesa)"
PKG_LONGDESC="libglu is the The OpenGL utility library"
PKG_TOOLCHAIN="autotools"

PKG_CONFIGURE_OPTS_TARGET="--disable-silent-rules \
                           --disable-debug \
                           --disable-osmesa \
                           --with-gnu-ld"
