#!/bin/bash

echo "Wlcome $USER on $HOSTNAME"
echo "###############################################"

freeram=$(free -m | grep Mem | awk '{print $4}')
load=`uptime | awk '{print $9}'`
ROOTFREE=$(df -h | grep '/dev/sdal' | awk '{print $4}')

echo "#############################################"
echo "Available free RAM is $freeram MB"
echo "#############################################"
echo "Current load average $load"
echo "#############################################"
echo "free ROOT partition size is $ROOTFREE"
