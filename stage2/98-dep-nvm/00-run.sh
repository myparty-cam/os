#!/bin/bash -e

on_chroot << EOF
  wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
EOF