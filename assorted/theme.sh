#!/bin/sh

CURRENT=`gsettings get org.gnome.desktop.interface gtk-theme`
echo ${CURRENT}
if [ "${CURRENT}" = "'Adwaita'" ]
then
	gsettings set org.gnome.desktop.interface gtk-theme "'Adwaita-dark'"
else
	gsettings set org.gnome.desktop.interface gtk-theme "'Adwaita'"
fi
clear
