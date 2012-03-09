
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
	file://arm-tracehook/0001-ARM-add-support-for-the-generic-syscall.h-interface.patch \
	file://arm-tracehook/0002-ARM-add-TRACEHOOK-support.patch \
	file://arm-tracehook/0003-ARM-support-syscall-tracing.patch \
	"

