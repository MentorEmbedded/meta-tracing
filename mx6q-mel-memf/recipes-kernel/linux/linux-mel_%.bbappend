FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

python () {
    if d.getVar("MEMF_TRACING", True) == "0":
        d.setVar("MEMF_MASTER", "")
        d.setVar("MEMF_REMOTE", "")
        d.setVar("MEMF_COMMON", "")
	return

    d.setVar("MEMF_MASTER", "file://place-memf-master-tracepoints.patch")
    d.setVar("MEMF_REMOTE", "file://place-memf-remote-tracepoints.patch" )
    d.setVar("MEMF_COMMON", "file://define-memf-tracepoints.patch \
				 file://store_cpu_id_of_remoteproc.patch \
				 file://place-memf-common-tracepoints.patch")
}

SRC_URI_append_mx6q += "${MEMF_MASTER}"
SRC_URI_append_mx6q-remote += "${MEMF_REMOTE}"
SRC_URI_append += "${MEMF_COMMON}"
