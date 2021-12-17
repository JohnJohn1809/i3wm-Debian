#!/bin/sh

# Make Folders

mkdir -p $HOME/.config

mkdir $HOME/Downloads/Mega
mkdir $HOME/Downloads/ClipGrab
mkdir $HOME/Downloads/4kstogram
mkdir $HOME/Downloads/4kvideodownloader
mkdir $HOME/Downloads/Warpinator
mkdir $HOME/Downloads/Telegram
mkdir $HOME/Downloads/Random
mkdir $HOME/Pictures/Screenshots

# Change Dunst Default Local Config for Custom Path 

cp -f /etc/xdg/dunst/dunstrc ~/.config/dunst/dunstrc

# Moving Configs

cp -R $HOME/i3wm-debian/config/.config/* "$HOME/.config/"

cp -R $HOME/i3wm-debian/config/home/.gtkrc-2.0 "$HOME"

sudo cp -R $HOME/i3wm-debian/config/boot/* "/boot/"

sudo cp -R $HOME/i3wm-debian/config/etc/* "/etc/"

sudo cp -R $HOME/i3wm-debian/config/usr/* "/usr/"

# Deleting Default Menu Entries

cd /usr/share/applications/ 

sudo rm -rf xfce4-terminal-settings.desktop
sudo rm -rf thunar-volman-settings.desktop
sudo rm -rf thunar-settings.desktop
sudo rm -rf thunar-bulk-rename.desktop
sudo rm -rf picom.desktop
sudo rm -rf compton.desktop

# Making i3 Scripts Executables

cd $HOME/.config/i3/scripts/

sudo chmod +x chmod.sh dunst_reload.sh fehbg.sh poweroff.sh reboot.sh spotify_debug.sh startup.sh upgrade.sh working.sh

# Grub

sudo update-grub

cd $HOME/i3wm-debian/scripts/
