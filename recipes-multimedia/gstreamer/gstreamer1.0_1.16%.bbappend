# ---------------------------------------------------------------------------------------------------------------------
# SPDX-License-Identifier: MIT
# ---------------------------------------------------------------------------------------------------------------------

FILESEXTRAPATHS_prepend_feature-tracing := "${THISDIR}/${PN}:"

SRC_URI_append_feature-tracing = "\
    file://0001-Add-optional-LTTng-support-in-configure.patch \
    file://0002-Add-basic-LTTng-tracepoints-infrastructure.patch \
    file://0003-Add-gst_flow-LLTng-tracepoints.patch \
    file://0004-gst_flow_data-LLTng-tracepoints.patch \
    file://0005-Support-for-gst_flow_event-LLTng-tracepoints.patch \
    file://0006-Added-support-for-gst_flow_event_latency-and-gst_flo.patch \
    file://0007-Added-GST_TRACEPOINT_ENABLED-macro.patch \
    file://0008-Added-support-for-gst_flow_event_caps-LTTng-tracepoi.patch \
    file://0009-Added-event-type-field-to-gst_flow_event_qos-event-r.patch \
    file://0010-Added-gst_latency_measurement_start-end-passed-event.patch \
    file://0011-Added-latency-probe-tracepoint-event.patch \
"

PACKAGECONFIG_append_feature-tracing = " lttng"
PACKAGECONFIG[lttng] = "--enable-lttng-tracepoints,--disable-lttng-tracepoints,lttng-ust"
