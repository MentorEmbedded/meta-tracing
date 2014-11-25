FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += "file://lttng-tools-Add-support-for-v4l2-probes.patch \
            file://0001-Fix-UST-subbuffers-silently-dropped-on-moderate-trac.patch \
           "
