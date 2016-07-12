FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

MEMF_MASTER = " \
	file://0001-place-memf-master-tracepoints.patch \
	"
MEMF_REMOTE = " \
        file://mel-remote/0001-rpmsg_ls10_driver-add-tracing-support-for-MEL-as-rem.patch \
        file://mel-remote/0002-virtio_rpmsg_bus-export-tracepoints-for-rpmsg-driver.patch \
"

MEMF_COMMON = " \
	file://0001-define-kernel-tracepoints-for-memf.patch \
	file://0002-allow-storing-cpu-id-of-remoteproc-for-memf-tracing.patch \
	file://0003-place-memf-common-tracepoints.patch \
"

SRC_URI_append_ls1021atwr += "${@bb.utils.contains('MACHINE_FEATURES', 'mel-master', '${MEMF_MASTER} ${MEMF_COMMON}', '', d) if d.getVar('MEMF_TRACING', True) == '1' else ''}"
SRC_URI_append_ls10-remote += "${@bb.utils.contains('MACHINE_FEATURES', 'mel-remote', '${MEMF_COMMON} ${MEMF_REMOTE}', '', d) if d.getVar('MEMF_TRACING', True) == '1' else ''}"
