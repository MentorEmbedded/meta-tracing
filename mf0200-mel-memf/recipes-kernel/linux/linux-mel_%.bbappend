FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

MEMF_MASTER = ""
MEMF_REMOTE = ""
MEMF_COMMON = ""

python () {
    if d.getVar("MEMF_TRACING", True) == "1":
        d.setVar("MEMF_REMOTE", "file://0001-define-memf-tracepoints.patch \
				 file://0002-make-memf_tracing-part-of-kernel.patch \
				 file://0003-place-memf-remote-tracepoints.patch \
				 file://0004-store-cpu-id-rpmsg-platform-driver.patch \
				 file://0005-do-not-create-tracepoints-in-rpmsg_imx6q-driver.patch \
				 file://0006-use-smp_processor_id-instead-of-using-hardcoded-cpu.patch \
				 file://0007-place-memf-common-tracepoints.patch \
				 file://0008-add-traces-to-rpmsg_send_offchannel_raw_large.patch \
				 file://0009-create-and-export-tracepoints-in-memf_tracing.patch \
				 file://0010-do-not-create-or-export-tracepoints-in-virtio_rpmsg_.patch \
				 file://0011-store_cpu_id_of_remoteproc.patch")
}

SRC_URI_append += "${@bb.utils.contains('MACHINE_FEATURES', 'mel-master', '${MEMF_MASTER}', '', d)}"
SRC_URI_append += "${@bb.utils.contains('MACHINE_FEATURES', 'mel-remote', '${MEMF_REMOTE}', '', d)}"
SRC_URI_append += "${MEMF_COMMON}"
