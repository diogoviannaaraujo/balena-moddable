#!/bin/bash

echo "STARTING XVFB"
Xvfb :1 -screen 0 1280x720x24

if [ -z ${VNC_PASS} ]; then
  echo "STARTING VNC WITHOUT PASSWORD"
  x11vnc -shared -display :1 -oa /var/log/x11vnc.log

else
  echo "STARTING VNC WITH PASSWORD"
  x11vnc -shared -display :1 -passwd %(ENV_VNC_PASS)s -oa /var/log/x11vnc.log
fi
