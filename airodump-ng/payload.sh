#!/bin/bash
# Name: easy_airodump-ng
# Author: Ryan_Van_Mass
# Description: Easily run the airodump-ng package from anywhare

#Creates Directory structure
DATE=`date '+%Y-%m-%d'`

#Asks User for location of Scan
echo "Scan Location?"
read LOCATION

mkdir -p /sd/airodump-ng/$DATE/$LOCATION

cd /sd/airodump-ng/$DATE/$LOCATION

#asks for the interface
echo "Monitoring interface?"
read INTERFACE

#runs package
airodump-ng $INTERFACE -w $LOCATION
