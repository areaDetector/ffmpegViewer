TEMPLATE = lib
CONFIG = staticlib
CONFIG += qt
HEADERS += colorMaps.h ffmpegWidget.h 
SOURCES += ffmpegWidget.cpp
QMAKE_CLEAN += libffmpegWidget.a
header_files.files = ffmpegWidget.h 
header_files.path = ../../include
target.path = ../../lib/linux-x86
INSTALLS += target header_files

# ffmpeg stuff
INCLUDEPATH += ../../vendor/ffmpeg-linux-x86_64/include
LIBPATH += ../../lib/linux-x86_64
QMAKE_RPATHDIR += ../../lib/linux-x86_64
LIBS += -lavdevice -lavformat -lavcodec -lavutil -lbz2 -lswscale -lca
DEFINES += __STDC_CONSTANT_MACROS

