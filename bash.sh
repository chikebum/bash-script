#!/bin/sh
#REMOVE SNAP FROM UBUNTU 22.04 ( code from Vonger https://github.com/Vonger/remove-snap )
snap remove firefox snap-store
snap remove snapd-desktop-integration gtk-common-themes
snap remove gnome-42-2204 gnome-3-38-2004
snap remove core18 core20 core22
snap remove bare
snap remove snapd
service snapd stop
apt remove snapd
apt purge snapd
rm -rf ~/snap

#Install Flatpak, VLC, Rhythmbox, qBittorrent, Kolourpaint, Document Scanner, HP Printer Drivers, Gnome Shell and tweaks using apt command
sudo apt update
sudo apt install -y flatpak vlc rhythmbox qbittorrent kolourpaint breeze simple-scan hplip-gui gnome-shell-extension-manager gnome-tweaks

#Add FLATHUB
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#Install Google Chrome Browser
flatpak install -y --noninteractive flathub com.google.Chrome

#Install Discord
flatpak install -y --noninteractive flathub com.discordapp.Discord

#Install Mozilla Firefox Browser
flatpak install -y --noninteractive flathub org.mozilla.firefox

#Install OnlyOffice
flatpak install -y --noninteractive flathub org.onlyoffice.desktopeditors

#Install ZapZap ( Whatsapp Client for Linux )
flatpak install -y --noninteractive flathub com.rtosta.zapzap

#Install Brave Browser
flatpak install -y --noninteractive flathub com.brave.Browser

#Install ThunderBird Email Client
flatpak install -y --noninteractive flathub org.mozilla.Thunderbird

#Install Zoom
flatpak install -y --noninteractive flathub us.zoom.Zoom

#Install OBS Studio
flatpak install -y --noninteractive flathub com.obsproject.Studio




