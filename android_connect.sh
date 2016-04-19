#!/bin/bash
adb kill-server
adb start-server
# TARGET_PORT=5555
TARGET_PORT=18188
IP=`adb shell netcfg |grep wlan0 |egrep -o '[0-9]+(\.[0-9]+){3}'`
echo "Android-IP is $IP"
adb tcpip $TARGET_PORT
adb connect $IP:$TARGET_PORT
