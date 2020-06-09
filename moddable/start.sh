#!/bin/bash

echo "STARTING XVFB"
Xvfb :1 -screen 0 1280x720x24 &
echo "STARTING X11VNC"
x11vnc -shared -display :1 -oa /var/log/x11vnc.log
sleep 30
echo "STARTING LXDE"
DISPLAY=:1 startlxde
