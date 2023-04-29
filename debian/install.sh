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

which curl
if [[ "$?" != 0 ]]; then
  read -p "curl is not found. Do you want to install it? (Y/n)" IC
  
  if [[ "$IC" == "" ]]; then
    IC="Y"
  fi
  if [[ "$IC" == "Y" ]] || [[ "$IC" == "y" ]]; then
    sudo apt update
    sudo apt install curl
  else
    echo -e "\ncurl is required for this script to work and you have choosen not to install it... exiting...\n"
    exit 1
  fi
fi

echo -e "\nDownloading neovim...\n"
wget https://github.com/neovim/neovim/releases/download/v0.8.3/nvim-linux64.deb

echo -e "\nRemoving existing neovim...\n"
sudo apt purge neovim

read -p "Is golang installed? (y/N)" GOI
if [[ "$GOI" == "" ]]; then
  GOI="N"
fi
if [[ "$GOI" == "N" ]] || [[ "$GOI" = "n" ]]; then
  echo -e "\nInstalling GoLang...\n"
  sudo add-apt-repository ppa:longsleep/golang-backports
  sudo apt install golang-go
  echo -e "\nInstalling Glow...\n"
  go install github.com/charmbracelet/glow@latest
fi

read -p "Is Python installed? (y/N)" PI
if [[ "$PI" == "" ]]; then
  PI="N"
fi
if [[ "$PI" == "N" ]] || [[ "$PI" = "n" ]]; then
  echo -e "\nInstalling Python...\n"
  sudo apt install python3 python3-pip 
fi

read -p "Is python-pylint-venv installed? (y/N)" PEI
if [[ "$PEI" == "" ]]; then
  PEI="N"
fi
if [[ "$PEI" == "N" ]] || [[ "$PEI" = "n" ]]; then
  echo -e "\nInstalling python-pylint-venv...\n"
  sudo apt install python-pylint-venv
fi

read -p "Is nodejs installed? (y/N)" NI
if [[ "$NI" == "" ]]; then
  NI="N"
fi
if [[ "$NI" == "N" ]] || [[ "$NI" = "n" ]]; then
  echo -e "\nInstalling NodeJS...\n"
  curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - && sudo apt-get install -y nodejs
fi

echo -e "\nInstalling neovim...\n"
sudo apt install ./nvim-linux64.deb

echo -e "\nInstalled...\n"
