TEMPLATE = subdirs

# Make sure things are built in order
CONFIG += ordered

# add subdirs in the right order
SUBDIRS = ffmpegWidget ffmpegViewer ffmpegWebcam4

# Get dependencies right
ffmpegViewer.depends = ffmpegWidget
ffmpegWebcam4.depends = ffmpegWidget

