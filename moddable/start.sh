#!/bin/bash

DISPLAY=:1

echo "STARTING XVFB"
Xvfb :1 -screen 0 1280x720x24 &
echo "STARTING X11VNC"
x11vnc -shared -display :1 -oa /var/log/x11vnc.log &
echo "STARTING GNOME TERMINAL"
gnome-terminal
