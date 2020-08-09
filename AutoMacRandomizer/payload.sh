#!/bin/bash
# Name: AutoMacRandomizer
# Scripter: Ryan_Van_Mass
# Description: Randomizes your mac at a set interval

#Asks the user what interface they would like this to be done on
echo "Interface?"
read INTERFACE

#Ask the user how long to wait between executions
echo "How long between randomization (time in sec)?"
read SLEEPTIME

#Infinate Loop
while true
do
	ifconfig $INTERFACE down
	macchanger -r $INTERFACE
	ifconfig $INTERFACE up
	echo "Sleeping"
	sleep $SLEEPTIME
done
