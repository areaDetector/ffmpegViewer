TARGET = ffmpegViewer
HEADERS += SSpinBox.h caValueMonitor.h
SOURCES += ffmpegViewer.cpp SSpinBox.cpp caValueMonitor.cpp
FORMS += ffmpegViewer.ui  
target.path = ../../prefix/bin
INSTALLS += target
INCLUDEPATH += ../ffmpegWidget
LIBS += -L../ffmpegWidget -lffmpegWidget
QMAKE_CLEAN += $$TARGET
CONFIG += debug
QMAKE_STRIP = echo 

# epics base stuff
INCLUDEPATH += $$(EPICS_BASE)/include $$(EPICS_BASE)/include/os/Linux
QMAKE_RPATHDIR += $$(EPICS_BASE)/lib/linux-x86_64
LIBS += -L$$(EPICS_BASE)/lib/linux-x86_64 -lca

# ffmpeg stuff
INCLUDEPATH += $$(FFMPEG_PREFIX)/include
QMAKE_RPATHDIR += $$(FFMPEG_PREFIX)/lib
LIBS += -L$$(FFMPEG_PREFIX)/lib -lavfilter -lavdevice -lavformat -lavcodec -lavutil -lbz2 -lswscale -lswresample
DEFINES += __STDC_CONSTANT_MACROS

# xvideo stuff
LIBS += -lXv
