#!/bin/bash
# Scripter: Ryan_Van_Mass
# Description: Easily Change MAC Address

#Gets required Information from the user
echo "What is the interface name?"
read INTERFACE

echo "What is the new MAC Address?"
read ADDRESS

#Take the interface offline
ifconfig $INTERFACE down
sleep 5

#Change MAC ADDRESS
macchanger -m $ADDRESS $INTERFACE
sleep 20

#bring interface back online
ifconfig $INTERFACE up


