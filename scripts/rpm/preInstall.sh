#!/bin/sh
if [ -f /etc/systemd/system/app.service ]; then
    echo "[PRE-INSTALL] Stopping App..."
    systemctl stop app
fi