#!/bin/bash

## CONFIGURE
echo "*** Configuring package with meson."
meson tmpbuild --prefix=/usr/local --libdir=/usr/local/lib/x86_64-linux-gnu --buildtype=release

## BUILD
echo "*** Building package with ninja."
ninja -C tmpbuild

## INSTALL
echo "*** Installing package with ninja."
sudo ninja -C tmpbuild install
sudo ldconfig
