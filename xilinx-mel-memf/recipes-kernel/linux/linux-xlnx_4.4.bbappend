FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

python () {
    if d.getVar("MEMF_TRACING", True) == "1":
        d.appendVar("SRC_URI", " file://0001-define-kernel-tracepoints-for-memf.patch \
                         file://0001-place-memf-master-a53-tracepoints.patch \
                         file://0002-allow-storing-cpu-id-of-remoteproc-for-memf-tracing.patch \
                         file://0003-place-memf-common-tracepoints.patch \
                         file://0001-place-trace-points-to-R5-remoteproc-platform-driver.patch \
                         file://0001-export-Synchronization_TriggerSend-tracepoint-to-use.patch \
                         file://0001-provide-MEMF-tracing-support-using-separate-file.patch \
                         file://0001-use-correct-type-to-log-trace-event.patch")
    return
}
