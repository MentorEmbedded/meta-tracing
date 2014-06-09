FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += "file://lttng-tools-Add-support-for-v4l2-probes.patch"

# Update to latest stable revision
SRCREV = "4309c447712b9bb2a6c1a285a6520fe115ce924d"
PV = "v2.4.1"
