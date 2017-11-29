FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PATCHES_MEMF_TRACING = " \
            file://0001-lttng-adaptation-layer-for-memf-tracing.patch \
            file://0002-lttng-adaptation-layer-for-synchornization-tracing.patch \
"

SRC_URI_append = " ${@PATCHES_MEMF_TRACING if d.getVar('MEMF_TRACING', True) == '1' else ''}"
