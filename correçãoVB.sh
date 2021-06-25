#!/bin/bash
clear
echo "Corrigr erro VirtualBox Guest Additions installation problem"
sudo apt-get update
sudo apt-get install build-essential gcc make perl dkms
sudo /sbin/vboxconfig
echo ""
sudo reboot
