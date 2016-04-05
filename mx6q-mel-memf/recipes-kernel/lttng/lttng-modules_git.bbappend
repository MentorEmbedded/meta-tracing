FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "${TRACING_PATCHES}"

python () {
    if d.getVar("MEMF_TRACING", True) == "0":
        d.setVar("TRACING_PATCHES", "")
        return

    d.setVar("TRACING_PATCHES", "file://0001-lttng-adaptation-layer-for-memf-tracing.patch \
                         file://0002-lttng-adaptation-layer-for-synchornization-tracing.patch")
}
