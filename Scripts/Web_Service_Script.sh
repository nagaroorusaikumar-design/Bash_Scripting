#!/bin/bash

#Installing Dependencies
sudo yum install wget unzip httpd -y > /dev/null

#Start and Enable service
sudo systemctl start httpd
sudo systemctl enable httpd

#Creating temporary directory
mkdir -p /tmp/webfiles
cd /tmp/webfiles

#Getting the template
wget https://www.tooplate.com/zip-templates/2098_health.zip > /dev/null

#Unzipping
unzip 2098_health.zip > /dev/null

#Coping the file
sudo cp -r 2098_health/*/var/www/html/

#Restarting the service
sudo systemctl restart httpd

#Cleaning the webfiles
rm -rf /tmp/webfiles > /dev/null
