FILESEXTRAPATHS:prepend:feature-tracing := "${THISDIR}/qtbase:"

SRC_URI:append:feature-tracing = " \
	file://0001-add_tracepoint_layer.patch \
	"

QT_CONFIG_FLAGS:append:feature-tracing = " -c++std c++1z -sa-trace"
DEPENDS:append:feature-tracing = " lttng-ust"

OE_QMAKE_LINK:append:feature-tracing = " -ldl -llttng-ust -lurcu-bp"
