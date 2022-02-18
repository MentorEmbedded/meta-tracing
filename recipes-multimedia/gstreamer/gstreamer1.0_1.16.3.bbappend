FILESEXTRAPATHS:prepend:feature-tracing := "${THISDIR}/${PN}:"

SRC_URI:append:feature-tracing = "\
    file://0001-gstreamer1.0-meson-add-lttng-tracepoints-support.patch \
"
PACKAGECONFIG[lttng] = "-Dlttng-tracepoints=true,-Dlttng-tracepoints=false,lttng-ust"
LIBS_feature-tracing = " -llttng-ust "
