#!/bin/bash

#making sure
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi
 
#update
apt update -y 

#dependencies
apt install openvpn network-manager-openvpn network-manager-openvpn-gnome openvpn-auth-ldap openvpn-auth-radius openvpn-systemd-resolved -y


#Making permanent changes
install -d -m 755 /live/persistence/TailsData_unlocked/ferm
install -d -m 755 /live/persistence/TailsData_unlocked/etc
install -d -m 755 /live/persistence/TailsData_unlocked/dotfiles/.config/autostart

echo "/etc/ferm  source=ferm,link" >> /live/persistence/TailsData_unlocked/persistence.conf
cp /home/amnesia/Persistent/ferm.conf /live/persistence/TailsData_unlocked/ferm/

echo "/etc  source=etc,link" >> /live/persistence/TailsData_unlocked/persistence.conf
cp /home/amnesia/Persistent/resolv-over-clearnet.conf /live/persistence/TailsData_unlocked/etc/

cp /home/amnesia/Persistent/desktop.desktop /live/persistence/TailsData_unlocked/dotfiles/.config/autostart/

chmod +x /home/amnesia/Desktop/*.desktop
chmod +x /home/amnesia/Persistent/*.sh




