#!/bin/bash
# Name: easy_airodump-ng adapted for EasyRecon
# Author: Ryan_Van_Mass
# Description: Easily run the airodump-ng package from anywhare

#Creates Directory structure
DATE=`date '+%Y-%m-%d'`

#Asks User for location of Scan
echo "Scan Location?"
read LOCATION

mkdir -p /sd/LOOT/$DATE/$LOCATION

cd /sd/LOOT/$DATE/$LOCATION

#asks for the interface
echo "Monitoring interface?"
read INTERFACE

#runs package
airodump-ng $INTERFACE -w $LOCATION
