FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

PRINC := "${@int(PRINC) + 1}"

SRC_URI += "\
file://0001-lttng-modules-Add-V4L2-tracepoints.patch \
"
