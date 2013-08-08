TEMPLATE = lib
CONFIG = staticlib
CONFIG += qt debug
HEADERS += colorMaps.h ffmpegWidget.h 
SOURCES += ffmpegWidget.cpp
QMAKE_CLEAN += libffmpegWidget.a
header_files.files = ffmpegWidget.h 
header_files.path = ../../prefix/include
target.path = ../../prefix/lib
INSTALLS += target header_files

# ffmpeg stuff
INCLUDEPATH += $$(FFMPEG_PREFIX)/include
DEFINES += __STDC_CONSTANT_MACROS

