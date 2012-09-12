################################################################
# Qwt Widget Library
# Copyright (C) 1997   Josef Wilgen
# Copyright (C) 2002   Uwe Rathmann
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the Qwt License, Version 1.0
################################################################

include( qwtconfig.pri )

TEMPLATE = subdirs
CONFIG   += ordered

SUBDIRS = \
    src \
    textengines

contains(QWT_CONFIG, QwtDesigner ) {

    greaterThan(QT_MAJOR_VERSION, 4) {

        # the API for plugins has changed for Qt5, but
        # the new API is completely undocumented yet

        message( The Qwt designer plugin is not yet ported to Qt 5 )
   
	} 
    else {

    	SUBDIRS += designer 
    }
}

contains(QWT_CONFIG, QwtExamples ) {
    SUBDIRS += examples 
}

qwtspec.files  = qwtconfig.pri qwtfunctions.pri qwt.prf
qwtspec.path  = $${QWT_INSTALL_FEATURES}

INSTALLS += qwtspec

