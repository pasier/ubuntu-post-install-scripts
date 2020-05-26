#!/usr/bin/env bash

echo "Installing Dash to Panel...";
{
    git clone "https://github.com/home-sweet-gnome/dash-to-panel.git";
    cd "dash-to-panel/";
    make install
    gnome-extensions enable "dash-to-panel@jderose9.github.com";
    cd ..
    sudo rm -r "dash-to-panel"
} > /dev/null 2>&1;

{
    sudo cp ~/.local/share/gnome-shell/extensions/dash-to-panel@jderose9.github.com/schemas/org.gnome.shell.extensions.dash-to-panel.gschema.xml /usr/share/glib-2.0/schemas/
    sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
} > /dev/null 2>&1