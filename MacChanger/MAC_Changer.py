#Scripter: Ryan_Van_Mass
#Date: June 8/20
#Description: Change Mac Address to avoid captive portals
#Dependincies: macchanger, net-tools

import os

#Collects required details from user
Interface = input("Please enter the Interface Name: ")
Address = input("Please enter the new MAC Address: ")


#Takes interface offline so mac can be changed
cmd = "ifconfig " + Interface + " down"
os.system(cmd)

os.system("sleep 30")

#changes mac
cmd = "macchanger -m " + Address + " " + Interface
os.system(cmd)

os.system("sleep 30")

#Brings interface back up
cmd = "ifconfig " + Interface + " up"
os.system(cmd)
