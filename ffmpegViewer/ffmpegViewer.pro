TARGET = ffmpegViewer
HEADERS += SSpinBox.h caValueMonitor.h
SOURCES += ffmpegViewer.cpp SSpinBox.cpp caValueMonitor.cpp
FORMS += ffmpegViewer.ui  
target.path = ../../data
INSTALLS += target
INCLUDEPATH += ../ffmpegWidget
LIBS += -L../ffmpegWidget -lffmpegWidget
QMAKE_CLEAN += $$TARGET

# epics base stuff
INCLUDEPATH += $$(EPICS_BASE)/include
INCLUDEPATH += $$(EPICS_BASE)/include/os/Linux
LIBPATH += $$(EPICS_BASE)/lib/linux-x86_64
QMAKE_RPATHDIR += $$(EPICS_BASE)/lib/linux-x86_64
LIBS += -lca

# ffmpeg stuff
INCLUDEPATH += ../../vendor/ffmpeg-linux-x86_64/include
LIBPATH += ../../lib/linux-x86_64
QMAKE_RPATHDIR += ../../lib/linux-x86_64
LIBS += -lavdevice -lavformat -lavcodec -lavutil -lbz2 -lswscale
DEFINES += __STDC_CONSTANT_MACROS

# xvideo stuff
LIBS += -lXv
