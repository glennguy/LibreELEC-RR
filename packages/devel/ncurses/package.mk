# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2017-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="ncurses"
PKG_VERSION="6.2-20210731"
PKG_SHA256="619bf314d0a7279dd46543c6351bd382a6175ad47263a30b1f981132680ee5ea"
PKG_LICENSE="MIT"
PKG_SITE="https://invisible-island.net/ncurses/announce.html"
PKG_URL="https://invisible-mirror.net/archives/ncurses/current/ncurses-${PKG_VERSION}.tgz"
PKG_DEPENDS_HOST="ccache:host"
PKG_DEPENDS_TARGET="toolchain zlib ncurses:host"
PKG_LONGDESC="A library is a free software emulation of curses in System V Release 4.0, and more."
# causes some segmentation fault's (dialog) when compiled with gcc's link time optimization.
PKG_BUILD_FLAGS="+pic"

PKG_CONFIGURE_OPTS_TARGET="--without-ada \
                           --without-cxx \
                           --without-cxx-binding \
                           --disable-db-install \
                           --without-manpages \
                           --without-progs \
                           --without-tests \
                           --without-shared \
                           --with-normal \
                           --without-debug \
                           --without-profile \
                           --without-termlib \
                           --without-ticlib \
                           --without-gpm \
                           --without-dbmalloc \
                           --without-dmalloc \
                           --disable-leaks \
                           --disable-rpath \
                           --disable-database \
                           --with-fallbacks=linux,screen,xterm,xterm-color,dumb,st-256color \
                           --with-termpath=/storage/.config/termcap \
                           --disable-big-core \
                           --enable-termcap \
                           --enable-getcap \
                           --disable-getcap-cache \
                           --enable-symlinks \
                           --disable-bsdpad \
                           --without-rcs-ids \
                           --enable-ext-funcs \
                           --disable-const \
                           --enable-no-padding \
                           --disable-sigwinch \
                           --enable-pc-files \
                           --with-pkg-config-libdir=/usr/lib/pkgconfig \
                           --disable-tcap-names \
                           --without-develop \
                           --disable-hard-tabs \
                           --disable-xmc-glitch \
                           --disable-hashmap \
                           --disable-safe-sprintf \
                           --disable-scroll-hints \
                           --disable-widec \
                           --disable-echo \
                           --disable-warnings \
                           --disable-home-terminfo \
                           --disable-assertions"

PKG_CONFIGURE_OPTS_HOST="--enable-termcap \
                         --with-termlib \
			 --without-tests \
                         --with-shared \
                         --disable-leaks \
                         --enable-pc-files \
                         --without-manpages"

post_makeinstall_target() {
  cp misc/ncurses-config ${TOOLCHAIN}/bin
  chmod +x ${TOOLCHAIN}/bin/ncurses-config
  sed -e "s:\(['=\" ]\)/usr:\\1${PKG_ORIG_SYSROOT_PREFIX}/usr:g" -i ${TOOLCHAIN}/bin/ncurses-config
  rm -f ${TOOLCHAIN}/bin/ncurses6-config
  rm -rf ${INSTALL}/usr/bin
}
