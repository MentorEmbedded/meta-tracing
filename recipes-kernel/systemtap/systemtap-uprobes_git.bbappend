FILESEXTRAPATHS_prepend := "${THISDIR}/systemtap"

SRCREV = "4bf09a21457027eb511bb16a9355d6e17a93ae5f"

SRC_URI += " \
	file://0001-PR13475-Fix-ARM-SDT_V3-operand-parsing.patch \
	"
