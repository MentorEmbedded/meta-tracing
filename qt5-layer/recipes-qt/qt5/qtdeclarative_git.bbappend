FILESEXTRAPATHS:prepend:feature-tracing := "${THISDIR}/qtdeclarative:"

SRC_URI:append:feature-tracing = " \
	file://0001-add_tracepoint_layer.patch \
	"
