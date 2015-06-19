FILESEXTRAPATHS_prepend := "${THISDIR}/qtbase:"

SRC_URI += " \
	file://0001-add_tracepoint_layer.patch \
	"

QT_CONFIG_FLAGS += " -no-c++11 -sa-trace "
DEPENDS += "lttng-ust"
