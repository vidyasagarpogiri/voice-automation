#!/bin/bash
cmd=`echo $1 | tr '[A-Z]' '[a-z]'`

case $cmd in

*shutdown*) /sbin/shutdown ;;
*restart*|*reboot*) /sbin/reboot ;;
*hostname*|*host name*) echo "Your hostname is `hostname`" ;;
*date*) echo "Today's date is `date +\"%A %d %B %Y\"`" ;;
*time*) echo "It's `date +\"%H %M\"`";;
*address|ip*) echo "Your ip address is `ip r l | grep -o "src.*" | awk '{print $2}'`";;
*lock*)gnome-screensaver-command -l ;;
*) echo "Not configured";;
esac
