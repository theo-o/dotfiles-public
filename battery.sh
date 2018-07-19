#!/bin/bash
#Add a crontab entry
# */5 * * * * sh <YOUR HOME FOLDER>/.cfg/battery.sh
#Courtesy of https://bbs.archlinux.org/viewtopic.php?id=138755

BATTINFO=`acpi -b`
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 4 -d " "` < 20% ]] ; then
    DISPLAY=:0.0 /usr/bin/notify-send "LOW BATTERY" "You have low battery"
    i3-nagbar -t wanring -m "ALERT: LOW BATTERY" -f fixed 42
fi
