# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2020-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="bottom"
PKG_VERSION="0.6.3"
PKG_SHA256="7bbb07b1bab922548ed1be63a00d90aeeb5e64cdbc165e2dfde30dbaa9ef787e"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/ClementTsang/bottom"
PKG_URL="https://github.com/ClementTsang/bottom/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain rust"
PKG_LONGDESC="A TUI system monitor written in Rust."
PKG_TOOLCHAIN="manual"

make_target() {
  . "$(get_build_dir rust)/cargo/env"
  cargo build \
    ${CARGO_Z_TARGET_APPLIES_TO_HOST} \
    --release \
    --locked \
    --all-features
}

makeinstall_target() {
  mkdir -p ${INSTALL}
  cp ${PKG_BUILD}/.${TARGET_NAME}/*/release/btm ${INSTALL}
}
