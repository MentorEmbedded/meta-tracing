FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

PRINC := "${@int(PRINC) + 1}"

SRC_URI_append_mx6q += "\
file://0001-lttng-modules-Add-V4L2-tracepoints.patch \
"

