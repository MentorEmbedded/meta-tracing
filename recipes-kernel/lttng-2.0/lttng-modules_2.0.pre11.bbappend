FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-2.0.pre11"

SRC_URI += " \
	file://0001-Fix-ring_buffer_frontend.c-missing-include-lttng-tra.patch \
	file://0002-Fix-cleanup-move-lttng-tracer-core.h-include-to-lib-.patch \
	"

