FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

PRINC := "${@int(PRINC) + 1}"

SRC_URI += "file://lttng-tools-Add-support-for-v4l2-probes.patch"
