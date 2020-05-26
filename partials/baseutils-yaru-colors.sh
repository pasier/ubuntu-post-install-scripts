#!/usr/bin/env bash

echo "Installing Yaru Colors..."
{
    git clone "https://github.com/Jannomag/Yaru-Colors.git"
    cd Yaru-Colors/
    cp -r Themes/Yaru-Blue-dark/ ~/.local/share/themes/
    cp -r Icons/Yaru-Blue/ ~/.icons/
    cd ..
    rm -rf Yaru-Colors/
} > /dev/null 2>&1

{
    gsettings set org.gnome.desktop.interface gtk-theme "Yaru-Blue"
    gsettings set org.gnome.desktop.interface icon-theme "Yaru-Blue"
    gsettings set org.gnome.shell.extensions.user-theme name "Yaru-Blue"
} > /dev/null 2>&1