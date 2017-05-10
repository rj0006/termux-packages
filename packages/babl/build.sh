TERMUX_PKG_HOMEPAGE="http://gegl.org/babl/"
TERMUX_PKG_DESCRIPTION="imageman"
TERMUX_PKG_VERSION=0.1.24
TERMUX_PKG_SRCURL=https://github.com/GNOME/babl/archive/BABL_0_1_24.tar.gz
TERMUX_PKG_FOLDERNAME=babl-BABL_0_1_24
TERMUX_PKG_SHA256=fff1a7e8b7d63286266d10a7a82836056294f3c5148817241738fb0412753f22
TERMUX_PKG_BUILD_IN_SRC=yes
termux_step_pre_configure() {
	export THREAD_LIB="-lc"
	NOCONFIGURE=1 	./autogen.sh
}