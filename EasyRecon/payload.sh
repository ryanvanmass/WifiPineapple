#!/bin/bash
#Name: EasyRecon
#Author: Ryan_Van_Mass
#Description: Easily collect Basic Recon Data on the go

####### SETUP #######
DATE=`date '+%Y-%m-%d'`
mkdir -p /sd/LOOT/$DATE

####### PINEAP #######
SCANTIME=10 #Duration of scan in seconds
SCANMODE=0 #0 for 2GHz, 1 for 5GHz, 2 for Both

pineap run_scan $SCANTIME $SCANMODE

####### AIRODUMP-NG #######
sh ./airodump-ng.sh
