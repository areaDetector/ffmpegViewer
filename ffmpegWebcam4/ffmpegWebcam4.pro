TARGET = ffmpegWebcam4
SOURCES += ffmpegWebcam4.cpp
FORMS += ffmpegWebcam4.ui  
target.path = ../../prefix/bin
INSTALLS += target
INCLUDEPATH += ../ffmpegWidget
LIBS += -L../ffmpegWidget -lffmpegWidget
QMAKE_CLEAN += $$TARGET

# ffmpeg stuff
INCLUDEPATH += $$(FFMPEG_PREFIX)/include
QMAKE_RPATHDIR += $$(FFMPEG_PREFIX)/lib
LIBS += -L$$(FFMPEG_PREFIX)/lib -lavfilter -lavdevice -lavformat -lavcodec -lavutil -lbz2 -lswscale -lswresample
DEFINES += __STDC_CONSTANT_MACROS

# xvideo stuff
LIBS += -lXv

