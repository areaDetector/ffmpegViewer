ffmpegViewer
============

A stand-alone application to provide a graphical view of a ffmpeg compressed 
stream - as provided by the 
[ffmpegServer](https://github.com/areaDetector/ffmpegServer) module.

Dependencies
------------

This application uses some 3rd party libraries:
* [Qt4](https://qt-project.org) - latest test with 4.8
* [ffmpeg](https://www.ffmpeg.org) - latest test with 2.1.4 from 
[Zeranoe FFmpeg](http://ffmpeg.zeranoe.com)


How to build
------------

First ensure that you have the above 3rd party libraries installed. The Qt
installation must be in your path.

Set the FFMPEG_PREFIX environment variable to point to the installation directory
of your ffmpeg library. Then build using qmake, make, make install.

Set the TARGET_PREFIX environment variable to point to the desired target 
installation directory

    export TARGET_PREFIX=../install/
    export FFMPEG_PREFIX=/path/to/ffmpeg/installation/
    qmake
    make
    make install


