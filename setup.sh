#!/bin/bash

# Update the system

zypper ref
zypper update

# Install Packman repos
zypper ar -cfp 90 https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/ packman
zypper dup --from packman --allow-vendor-change

# Instals OPI
zypper install opi

# Install codecs
opi codecs

# Install Microsoft Edge
flatpak install flathub com.microsoft.Edge

# Install Discord
flatpak install flathub com.discordapp.Discord

# Install Microsoft Fonts and Build Essentials
zypper install fetchmsttfonts patterns-devel-base-devel_basis

# Install VSCode
zypper ar https://packages.microsoft.com/yumrepos/vscode vscode
rpm --import https://packages.microsoft.com/keys/microsoft.asc
zypper refresh
zypper install code

read -p "All done! Press enter to continue"

