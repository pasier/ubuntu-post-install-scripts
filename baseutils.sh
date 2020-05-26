#!/usr/bin/env bash

echo "Hi! We're gone to install some apps...";
echo "";

# Base installs
echo "Installing base stuff..."
sudo apt install apt -y git gettext neofetch > /dev/null 2>&1;
sudo apt install apt -y gnome-shell-extensions gnome-tweak-tool gnome-menus > /dev/null 2>&1;
echo "";

# Snap installs
echo "Installing Spotify...";
sudo snap install spotify > /dev/null 2>&1;
echo "Installing Visual Studio Code...";
sudo snap install --classic code > /dev/null 2>&1;
echo "Installing VLC...";
sudo snap install vlc > /dev/null 2>&1;
echo "";

# Other Installations
chmod a+x ./partials/baseutils*.sh;

# Dash to Panel
gnome-extensions disable "ubuntu-dock@ubuntu.com";
./partials/baseutils-dash-to-panel.sh;
