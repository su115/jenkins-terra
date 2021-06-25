#!/bin/bash

# install jenkins
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install openjdk-11-jdk -y
sudo apt install jenkins ansible -y

# disable password loggin
# be careful with it!!!
sed -i 's/<useSecurity>true<\/useSecurity>/<useSecurity>false<\/useSecurity>/g' /var/lib/jenkins/config.xml
sudo systemctl restart jenkins



# Backup
mkdir /home/ubuntu/backup
sudo chown jenkins:jenkins /home/ubuntu/backup
