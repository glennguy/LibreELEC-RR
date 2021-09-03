# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2016-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libinput"
PKG_VERSION="1.18.1"
PKG_SHA256="9ca14021fbc2523bc0610582c51f368321592040b6ca63becc2fa1ea11f1a7cb"
PKG_LICENSE="GPL"
PKG_SITE="http://www.freedesktop.org/wiki/Software/libinput/"
PKG_URL="http://www.freedesktop.org/software/libinput/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain systemd libevdev mtdev"
PKG_LONGDESC="libinput is a library to handle input devices in Wayland compositors and to provide a generic X.Org input driver."

PKG_MESON_OPTS_TARGET="-Dlibwacom=false \
                       -Ddebug-gui=false \
                       -Dtests=false \
                       -Ddocumentation=false"
