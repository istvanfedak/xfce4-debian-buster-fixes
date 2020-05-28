#!/bin/bash
# run with sudo

apt remove xserver-xorg-input-synaptics
apt install xserver-xorg-core
apt install xserver-xorg-input-libinput

mkdir /etc/X11/xorg.conf.d

echo 'Section "InputClass"
        Identifier "libinput touchpad catchall"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
        Option "Tapping" "on"
EndSection' > /etc/X11/xorg.conf.d/40-libinput.conf
