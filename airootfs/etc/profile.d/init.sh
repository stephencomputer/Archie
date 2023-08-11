#!/bin/bash

rfkill unblock all

sudo rm -rf /etc/profile.d/init.sh
	
sudo rm -rf /usr/share/calamares/branding	
		
sudo mv /usr/share/tmpbranding /usr/share/calamares/
sudo mv /usr/share/calamares/tmpbranding /usr/share/calamares/branding
	
sudo rm -rf /usr/share/calamares/modules
		
sudo mv /usr/share/tmpmodules /usr/share/calamares/
sudo mv /usr/share/calamares/tmpmodules /usr/share/calamares/modules

sudo rm -rf /usr/share/calamares/settings.conf
sudo mv /usr/share/tmpsettings.conf /usr/share/calamares/settings.conf

sudo rm -rf /etc/xdg/autostart/calamares.desktop
sudo mv /etc/xdg/autostart/tmpcalamares.desktop /etc/xdg/autostart/calamares.desktop

sudo systemctl enable NetworkManager.service
sudo systemctl start NetworkManager.service

sudo systemctl enable bluetooth 
sudo systemctl start bluetooth 

rfkill block bluetooth

sudo systemctl set-default graphical.target

sudo systemctl enable sddm
sudo systemctl start sddm