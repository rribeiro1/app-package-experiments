#!/bin/sh
echo "[POST-INSTALL] Moving app.service to '/etc/systemd/system'"
mv -f /opt/app/app.service /etc/systemd/system/
echo "[POST-INSTALL] Reloading daemon units"
systemctl daemon-reload
echo "[POST-INSTALL] Initializing the service"
systemctl start app.service