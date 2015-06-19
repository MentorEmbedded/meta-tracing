FILESEXTRAPATHS_prepend := "${THISDIR}/qtquick1:"

SRC_URI += " \
	file://0001-add_tracepoint_layer.patch \
	"

DEPENDS += "qtbase"
