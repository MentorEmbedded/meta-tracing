FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

MEMF_MASTER = " \
	file://0001-place-memf-master-tracepoints.patch \
	"
MEMF_COMMON = " \
	file://0001-define-kernel-tracepoints-for-memf.patch \
	file://0002-allow-storing-cpu-id-of-remoteproc-for-memf-tracing.patch \
	file://0003-place-memf-common-tracepoints.patch \
"

SRC_URI_append_ls1021atwr += "${@bb.utils.contains('MACHINE_FEATURES', 'mel-master', '${MEMF_MASTER} ${MEMF_COMMON}', '', d) if d.getVar('MEMF_TRACING', True) == '1' else ''}"
