FILESEXTRAPATHS_prepend := "${THISDIR}/qtdeclarative:"

SRC_URI += " \
	file://0001-add_tracepoint_layer.patch \
	"

DEPENDS += "qtbase"
