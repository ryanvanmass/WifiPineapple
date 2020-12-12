# Name
EasyRecon

# Author
Ryan_Van_Mass

# Description
Easily collect basic recon data using the wifi pineapple

# Dependancies
* airodump-ng

# Set Up
* Create a /sd/LOOT/ Directory
* Copy pineap to /etc/config (__NOTE:__ you will need to replace the existing file)
* Restart the pineap service (`service pineapd restart`)

# Execution
The script will run 2 scans, the first scan is a pineap recon scan and the second is an airodump-ng

__NOTE:__ By Default the pineap scan will run for 30 Sec and only on the 2 GHz spectrum both of these are easily configurable from the payload.sh file
