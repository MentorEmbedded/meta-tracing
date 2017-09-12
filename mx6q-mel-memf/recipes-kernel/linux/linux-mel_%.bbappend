FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

MEMF_MASTER = ""
MEMF_REMOTE = ""
MEMF_COMMON = ""

python () {
    if d.getVar("MEMF_TRACING", True) == "1":
        d.setVar("MEMF_MASTER", "file://place-memf-master-tracepoints.patch \
                                 file://do-not-create-tracepoints-in-platform-driver.patch")
        d.setVar("MEMF_REMOTE", "file://place-memf-remote-tracepoints.patch \
                                 file://store-cpu-id-rpmsg-platform-driver.patch \
                                 file://0001-use-smp_processor_id-instead-of-using-hardcoded-cpu-.patch \
                                 file://do-not-create-tracepoints-in-rpmsg_imx6q-driver.patch")
        d.setVar("MEMF_COMMON", "file://define-memf-tracepoints.patch \
                                 file://store_cpu_id_of_remoteproc.patch \
                                 file://place-memf-common-tracepoints.patch \
                                 file://add-traces-to-rpmsg_send_offchannel_raw_large.patch \
                                 file://do-not-create-or-export-tracepoints-in-virtio_rpmsg_bus.patch \
                                 file://create-and-export-tracepoints-in-memf_tracing.patch \
                                 file://make-memf_tracing-part-of-kernel.patch")
}

SRC_URI_append += "${@bb.utils.contains('MACHINE_FEATURES', 'mel-master', '${MEMF_MASTER}', '', d)}"
SRC_URI_append += "${@bb.utils.contains('MACHINE_FEATURES', 'mel-remote', '${MEMF_REMOTE}', '', d)}"
SRC_URI_append += "${MEMF_COMMON}"
