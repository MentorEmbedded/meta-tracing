FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

python () {
    if d.getVar("MEMF_TRACING", True) == "1":
        d.appendVar("SRC_URI", " file://0001-lttng-adaptation-layer-for-memf-tracing.patch \
				file://0002-lttng-adaptation-layer-for-memf-synchronization.patch \
				file://0003-enable-building-the-added-lttng-modules.patch \
				")
    return
}
