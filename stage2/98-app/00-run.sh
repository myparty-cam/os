#!/bin/bash -e

install -m 777 files/run-app.sh "${ROOTFS_DIR}/home/mpc/run-app.sh"
install -m 644 files/mpc-app.service "${ROOTFS_DIR}/etc/systemd/system/mpc-app.service"

on_chroot << EOF
  wget -O /home/mpc/mpc-1.0.0.arm64.AppImage https://cloud.rosenkra.nz/s/mWscpyT4np6jtSi/download

	# chmod +x /home/mpc/run-app.sh
	chmod +x /home/mpc/mpc-1.0.0.arm64.AppImage

	# systemctl enable mpc-app.service
EOF
