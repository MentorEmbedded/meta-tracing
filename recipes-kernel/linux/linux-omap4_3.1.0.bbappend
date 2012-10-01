
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.1.0:"

SRC_URI += " \
	file://arm-tracehook/0001-ARM-add-support-for-the-generic-syscall.h-interface.patch \
	file://arm-tracehook/0002-ARM-add-TRACEHOOK-support.patch \
	file://arm-tracehook/0003-ARM-support-syscall-tracing.patch \
	file://arm-tracehook/0004-syscall.h-include-linux-sched.h.patch \
        file://stap-opts.cfg \
	"

