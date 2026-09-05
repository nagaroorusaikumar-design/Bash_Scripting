#!/bin/bash

### This script prints system info ###

echo "Welcome to N Sai Kumar's first scripting project"
echo
echo "###################################"

#System Uptime
echo "The uptime of this system is: "
uptime
echo
echo "###################################"
#Memory
echo "Memory utilization: "
free -m
echo
echo "###################################"
#Disk
echo "Disk Utilization: "
df -h
