# ---------------------------------------------------------------------------------------------------------------------
# SPDX-License-Identifier: MIT
# ---------------------------------------------------------------------------------------------------------------------

FILESEXTRAPATHS_prepend_feature-tracing := "${THISDIR}/qtdeclarative:"

SRC_URI_append_feature-tracing = " \
	file://0001-add_tracepoint_layer.patch \
	"
