#!/bin/bash

#Installing Dependencies
sudo yum install wget unzip httpd -y

#Start and Enable service
sudo systemctl start httpd
sudo systemctl enable httpd

#Creating temporary directory
mkdir -p /tmp/webfiles
cd /tmp/webfiles

#Getting the template
wget $1

#Unzipping
unzip $2

#Coping the file
sudo cp -r $3 $4

#Restarting the service
sudo systemctl restart httpd

#Cleaning the webfiles
rm -rf $5
