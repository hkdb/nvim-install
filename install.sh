#!/bin/bash

##
## nvim installation script
##

# Setting Text Bolding Variables
bold=$(tput bold)
normal=$(tput sgr0)

echo ""

# Dectect OS/Distro
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	if [ -n "$(command -v lsb_release)" ]; then
		distro=$(lsb_release -s -d)
	elif [ -f "/etc/os-release" ]; then
		distro=$(grep PRETTY_NAME /etc/os-release | sed 's/PRETTY_NAME=//g' | tr -d '="')
	elif [ -f "/etc/debian_version" ]; then
		distro="Debian $(cat /etc/debian_version)"
	elif [ -f "/etc/redhat-release" ]; then
		distro=$(cat /etc/redhat-release)
	else
		distro="$(uname -s) $(uname -r)"
	fi
	echo "${bold}OS:${normal} Linux"
	echo ""
	# Set Directory based on Distro
	if [[ $distro == "Pop!_OS"* ]] || [[ $distro == "Ubuntu"* ]] || [[ $distro == "Debian"* ]]; then
		DIR="debian"
	elif [[ $distro == "\"Arch"* ]] || [[ $distro == "\"Garuda"* ]]; then
		DIR="arch"
	elif [[ $distro == "Fedora"* ]]; then
		DIR="fedora"
	fi
  echo "${bold}Distro:${normal} ${distro}"
elif [[ "$OSTYPE" == "darwin"* ]]; then
	echo "${bold}OS:${normal} MacOS"
	echo ""
	distro=$(sw_vers -productVersion)
	echo "${bold}Version:${normal} ${distro}"
	DIR="macos"
else
	echo "Unsupported Operation System... Exiting..."
	exit 1
fi

# Install latest stable neovim
echo -e "\nInstalling neovim...\n"
./$DIR/install.sh

CPATH=`pwd`

echo -e "\nInstalling NVchad...\n"
cd ~/
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

echo -e "\nAdding customization...\n"
cd ~/.config/nvim/lua
ln -s $CPATH/custom .
cd $CPATH

echo -e "\nCompleted...\n"

