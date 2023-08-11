#!/bin/bash

systemctl enable NetworkManager.service
systemctl start NetworkManager.service

export DESKTOP_SESSION=plasma
startplasma-wayland

sudo rm -rf /etc/profile.d/init.sh
