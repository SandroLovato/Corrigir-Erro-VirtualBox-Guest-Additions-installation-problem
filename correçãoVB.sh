#!/bin/bash
clear
echo "Corrigr erro VirtualBox Guest Additions installation problem"
sudo mount /dev/cdrom /mnt
##Listando o conteúdo do ponto de montagem:##
ls -l /mnt
##Instale os pacotes necessários##
sudo apt update -y && sudo apt upgrade
sudo apt install dkms linux-headers-$(uname -r) build-essential
##Instalar adições de convidados do VirtualBox no DEbian##
sudo sh /mnt/VBoxLinuxAdditions.run
##Após a instalação, reinicie sua máquina virtual para recarregar os módulos do kernel.##
systemctl reboot -i
echo ""
