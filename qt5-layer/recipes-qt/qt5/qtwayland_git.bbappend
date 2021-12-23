# ---------------------------------------------------------------------------------------------------------------------
# SPDX-License-Identifier: MIT
# ---------------------------------------------------------------------------------------------------------------------

# when tracing is enabled, qtwayland sources need to link with libdl
OE_QMAKE_LINK_append_feature-tracing = " -ldl"
