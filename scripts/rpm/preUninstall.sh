#!/bin/sh
echo "[PRE-UNINSTALL] Stopping App..."
if [ -f /etc/systemd/system/app.service ]; then
    echo "[PRE-INSTALL] Stopping App..."
    systemctl stop app
fi
if [ ! $1 -gt 0 ] ; then
    echo "[PRE-UNINSTALL] Restoring app.service to '/opt/app/'"
    mv -f /etc/systemd/system/app.service /opt/app/
fi