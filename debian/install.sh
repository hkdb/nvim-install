#!/bin/bash

# Install wget if it's not installed
which wget
if [[ "$?" != 0 ]]; then
  read -p "wget is not found. Do you want to install it? (Y/n)" IWGET
  if [[ "$IWGET" == "" ]]; then
    IWGET="Y"
  fi
  if [[ "$IWGET" == "Y" ]] || [[ "$IWGET" == "y" ]]; then
    sudo apt update
    sudo apt install wget
  else
    echo -e "\nwget is required for this script to work and you have choosen not to install it... exiting...\n"
    exit 1
  fi
fi

echo -e "\nDownloading neovim...\n"
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb

echo -e "\nRemoving existing neovim...\n"
sudo apt purge neovim

echo -e "\nInstalling neovim...\n"
sudo apt install ./nvim-linux64.deb

echo -e "\nCompleted...\n"


