FILESEXTRAPATHS_prepend := "${THISDIR}/qtquick1-${PV}:"

SRC_URI += " \
	file://0001-add_tracepoint_layer.patch \
	"

DEPENDS += "qtbase"
