#!/usr/bin/env bash

echo "Installing Animation Tweaks...";
{
    git clone --single-branch --branch="Version-9.1" "https://github.com/Selenium-H/Animation-Tweaks.git"
    cd "Animation-Tweaks/"
    chmod +x INSTALL.sh && ./INSTALL.sh
    gnome-extensions enable "animation-tweaks@Selenium-H"
    cd ..
} > /dev/null 2>&1

{
sudo cp ~/.local/share/gnome-shell/extensions/animation-tweaks@Selenium-H/schemas/org.gnome.shell.extensions.animation-tweaks.gschema.xml /usr/share/glib-2.0/schemas/
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
} > /dev/null 2>&1