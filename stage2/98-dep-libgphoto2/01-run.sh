#!/bin/bash -e

on_chroot << EOF
  git clone https://github.com/gphoto/libgphoto2.git
  cd libgphoto2
  git checkout v2.5.27
  autoreconf --install --symlink
  ./configure --prefix=/usr
  make
  make install
EOF
