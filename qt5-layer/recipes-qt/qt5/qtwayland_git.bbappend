# when tracing is enabled, qtwayland sources need to link with libdl
OE_QMAKE_LINK:append:feature-tracing = " -ldl"
