FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

python () {
	if d.getVar("MEMF_TRACING", True) == "1":
	d.appendVar("SRC_URI", " \
		file://0001-linux-mel-define-kernel-tracepoints-for-MEL.patch \
		file://0002-memf-common-tracepoints.patch \
		file://0003-memf-tracepoints-for-R5-remote-driver.patch \
		"
	return
}
