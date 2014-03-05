FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

SRC_URI += "file://0001-Add-optional-LTTng-support-in-configure.patch \
            file://0002-Add-basic-LTTng-tracepoints-infrastructure.patch \
            file://0003-Add-gst_flow-LLTng-tracepoints.patch \
            file://0004-gst_flow_data-LLTng-tracepoints.patch \
            file://0005-Support-for-gst_flow_event-LLTng-tracepoints.patch \
            file://0006-Added-support-for-gst_flow_event_latency-and-gst_flo.patch \
            file://0007-Tracepoint-modifications-for-gstpad.c.patch \
            file://0008-New-event-traces-and-latency-traces.patch"

PACKAGECONFIG ?= "lttng"
PACKAGECONFIG[lttng] = "--enable-lttng-tracepoints,--disable-lttng-tracepoints,lttng-ust"
