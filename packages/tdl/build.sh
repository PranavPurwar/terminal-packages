TERMUX_PKG_HOMEPAGE=https://github.com/iyear/tdl
TERMUX_PKG_DESCRIPTION="Telegram downloader written in GO"
TERMUX_PKG_LICENSE="AGPL-V3"
TERMUX_PKG_LICENSE_FILE="LICENSE"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.13.3"
TERMUX_PKG_SRCURL=https://github.com/iyear/tdl/archive/refs/tags/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=f92356bbc29a98bdcbd5bf2ae9c71280cf9d3a577ef0ca3f490a4cbc22739078
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true

termux_step_make() {
	termux_setup_golang
	go build
}

termux_step_make_install() {
	install -Dm700 -t $TERMUX_PREFIX/bin tdl
}
