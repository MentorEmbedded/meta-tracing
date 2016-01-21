FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

PRINC := "${@int(PRINC) + 1}"

SRC_URI_append = " \
                  file://0001-lttng-modules-add-support-for-memf-tracepoints.patch \
"
