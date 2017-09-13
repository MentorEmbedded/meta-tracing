FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

MEMF_MASTER = ""
MEMF_REMOTE = ""
MEMF_COMMON = ""

python () {
    if d.getVar("MEMF_TRACING", True) == "1":
        d.setVar("MEMF_COMMON", "file://0001-define-kernel-tracepoints-for-memf.patch \
                                 file://0001-place-memf-master-tracepoints.patch \
				 file://0002-allow-storing-cpu-id-of-remoteproc-for-memf-tracing.patch \
				 file://0003-place-memf-common-tracepoints.patch")
}

SRC_URI_append_mx7d += "${@bb.utils.contains('MACHINE_FEATURES', 'mel-master', '${MEMF_MASTER} ${MEMF_COMMON}', '', d) if d.getVar('MEMF_TRACING', True) == '1' else ''}"
SRC_URI_append_mx7d += "${@bb.utils.contains('MACHINE_FEATURES', 'mel-remote', '${MEMF_COMMON} ${MEMF_REMOTE}', '', d) if d.getVar('MEMF_TRACING', True) == '1' else ''}"




