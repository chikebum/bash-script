#!/bin/sh

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

sudo apt update
sudo apt install -y flatpak vlc rhythmbox qbittorrent kolourpaint breeze simple-scan hplip-gui gnome-shell-extension-manager gnome-tweaks
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install -y --noninteractive flathub com.google.Chrome
flatpak install -y --noninteractive flathub com.discordapp.Discord
flatpak install -y --noninteractive flathub org.mozilla.firefox
flatpak install -y --noninteractive flathub org.onlyoffice.desktopeditors
flatpak install -y --noninteractive flathub com.rtosta.zapzap











