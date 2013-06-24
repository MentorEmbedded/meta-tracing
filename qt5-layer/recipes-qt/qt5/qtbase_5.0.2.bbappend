FILESEXTRAPATHS_prepend := "${THISDIR}/qtbase-${PV}:"

SRC_URI += " \
	file://0001-add_tracepoint_layer.patch \
	"

QT_CONFIG_FLAGS += " -no-c++11 -sa-trace "

export SA_TRACE_INSTALL="${SOURCERY_ANALYZER_INSTALLATION_HARDWARE}"
