# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="wayland-protocols"
PKG_VERSION="1.22"
PKG_SHA256="96e7cf03524995a47028236c6d6141c874e693cb80c0be8dabe15455cdd5a5a7"
PKG_LICENSE="OSS"
PKG_SITE="https://wayland.freedesktop.org/"
PKG_URL="https://wayland.freedesktop.org/releases/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="Specifications of extended Wayland protocols"
#to be removed went version updated to allow meson build without wayland-scanner
PKG_TOOLCHAIN="configure"

post_makeinstall_target() {
  rm -rf ${INSTALL}
}
