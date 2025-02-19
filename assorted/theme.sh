#!/bin/sh

CURRENT=`gsettings get org.gnome.desktop.interface gtk-theme`
echo ${CURRENT}
if [ "${CURRENT}" = "'Adwaita'" ]
then
	gsettings set org.gnome.desktop.interface gtk-theme "'Adwaita-dark'"
	gsettings set org.gnome.desktop.interface color-scheme "'prefer-dark'"
else
	gsettings set org.gnome.desktop.interface gtk-theme "'Adwaita'"
	gsettings set org.gnome.desktop.interface color-scheme "'prefer-light'"
fi
clear
