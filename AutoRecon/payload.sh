#!/bin/bash
# Name: AutoRecon
# Author: Ryan_Van_Mass
# Description: Automatically run recon Scans at a set interval
####### SETUP #######
#Variables
DATE=`date '+%Y-%m-%d'`
SCANTIME=30 #Duration of scan in seconds
SCANMODE=0 #0 for 2GHz, 1 for 5GHz, 2 for Both
TIME=`date '+%H-%M'`
INTERFACE="wlan1mon"

#Makes Loot Directorys
mkdir -p /sd/LOOT/$DATE
mkdir -p /sd/LOOT/$DATE/$TIME

####### PINEAP #######
pineap run_scan $SCANTIME $SCANMODE
#sleep 35

####### AIRODUMP-NG #######
cd /sd/LOOT/$DATE/$TIME

#runs package
timeout --foreground 30s airodump-ng $INTERFACE -w $TIME
