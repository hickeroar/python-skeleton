#!/bin/bash

cd /vagrant

echo " "
echo "Beginning Provisioning!"
echo "Please ignore any 'stdin' related errors. It's an Ubuntu+Vagrant bug."

echo " "
echo " [Cahoots] Step 1: Adding APT Repositories and Updating APT"
echo " "
apt-get update -o Acquire::ForceIPv4=true

echo " "
echo " [Cahoots] Step 2: Upgrading Base System Packages"
echo " "
apt-get upgrade -y --force-yes -o Acquire::ForceIPv4=true

echo " "
echo " [Cahoots] Step 3: Installing Required System Packages"
echo " "
cat setup/requirements.system.txt | xargs apt-get install -y --force-yes -o Acquire::ForceIPv4=true

echo " "
echo " [Cahoots] Step 4: Installing Required Python Packages"
echo " "
pip install -r setup/requirements.txt

echo " "
echo " [Cahoots] Step 5: Installing Development Python Packages"
echo " "
pip install -r setup/requirements.dev.txt

echo " "
echo " [Cahoots] Step 6: Setting Up Bash Defaults"
cat /vagrant/setup/bashrc >> /home/vagrant/.bashrc

echo " "
echo " "
echo "Provisioning Complete!"
echo " "
