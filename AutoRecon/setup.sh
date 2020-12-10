#!/bin/bash
#Installs timeout
opkg update
opkg install coreutils-timeout

#Sets PineAP settings
rm /etc/config/pineap
cp .setup/pineap etc/config/pineap

#Restart Pineap service
service pineapd restart

#Adds Cron Entry to automatically run payload.sh
Path=`pwd`
crontab -l | { cat; echo "*/15 * * * * $Path/payload.sh"; } | crontab -
