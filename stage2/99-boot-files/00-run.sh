#!/bin/bash -e

install -m 644 files/cmdline.txt "${ROOTFS_DIR}/boot/"
install -m 644 files/config.txt "${ROOTFS_DIR}/boot/"

install -m 644 files/splash.png "${ROOTFS_DIR}/opt/splash.png"
install -m 644 files/splashscreen.service "${ROOTFS_DIR}/etc/systemd/system/splashscreen.service"

on_chroot << EOF
	raspi-config nonint do_boot_wait 1

	systemctl disable getty@tty1
	systemctl enable splashscreen.service
EOF
