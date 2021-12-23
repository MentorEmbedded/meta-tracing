# ---------------------------------------------------------------------------------------------------------------------
# SPDX-License-Identifier: MIT
# ---------------------------------------------------------------------------------------------------------------------

FILESEXTRAPATHS_prepend_feature-tracing := "${THISDIR}/qtbase:"

SRC_URI_append_feature-tracing = " \
	file://0001-add_tracepoint_layer.patch \
	"

QT_CONFIG_FLAGS_append_feature-tracing = " -c++std c++1z -sa-trace"
DEPENDS_append_feature-tracing = " lttng-ust"

OE_QMAKE_LINK_append_feature-tracing = " -ldl -llttng-ust -lurcu-bp"
