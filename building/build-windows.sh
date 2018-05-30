#!/bin/sh

# Make sure that we build in 32-bit.
export OVERRIDE_ARCH=32

mkdir windows32_build
cd windows32_build
mkdir .build
cd .build

$MXE/usr/i686-w64-mingw32.static/qt5/bin/qmake ../../ && make

cd ../../
mkdir deb
cp windows32_build/.build/bin/MidiEditor.exe deb/MidiEditor.exe
