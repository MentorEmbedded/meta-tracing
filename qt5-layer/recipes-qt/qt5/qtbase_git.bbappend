FILESEXTRAPATHS_prepend := "${THISDIR}/qtbase:"

SRC_URI += " \
	file://0001-add_tracepoint_layer.patch \
	"

QT_CONFIG_FLAGS += " -c++std c++1z -sa-trace"
DEPENDS += "lttng-ust"

OE_QMAKE_LINK += " -ldl -llttng-ust -lurcu-bp "
