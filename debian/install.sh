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

read -p "Is golang installed? (y/N)" GOI
if [[ "$GOI" == "N" ]] || [[ "$GOI" = "n" ]]; then
  echo -e "\nInstalling GoLang...\n"
  sudo apt install go
  echo -e "\nInstalling Glow...\n"
  go install github.com/charmbracelet/glow@latest
fi

read -p "Is python-pylint-venv installed? (y/N)" PEI
if [[ "$PEI" == "N" ]] || [[ "$PEI" = "n" ]]; then
  echo -e "\nInstalling GoLang...\n"
  sudo apt install python-pylint-venv
fi

echo -e "\nInstalling neovim...\n"
sudo apt install ./nvim-linux64.deb

echo -e "\nInstalled...\n"
