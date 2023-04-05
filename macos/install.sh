#!/bin/bash

# Install wget if it's not installed
echo -e "\nInstalling neovim...\n"

read -p "Is golang installed? (y/N)" GOI
if [[ "$GOI" == "" ]]; then
  GOI="N"
fi
if [[ "$GOI" == "N" ]] || [[ "$GOI" = "n" ]]; then
  echo -e "\nInstalling GoLang...\n"
  brew install go
  echo -e "\nInstalling Glow...\n"
  brew install glow
fi

read -p "Is Python installed? (y/N)" PI
if [[ "$PI" == "" ]]; then
  PI="N"
fi
if [[ "$PI" == "N" ]] || [[ "$PI" = "n" ]]; then
  echo -e "\nInstalling Python...\n"
  brew install python3
fi

read -p "Is python-pylint-venv installed? (y/N)" PEI
if [[ "$PEI" == "" ]]; then
  PEI="N"
fi
if [[ "$PEI" == "N" ]] || [[ "$PEI" = "n" ]]; then
  echo -e "\nInstalling pylint-venv...\n"
  pip3 install pylint-venv
fi

read -p "Is nodejs installed? (y/N)" NI
if [[ "$NI" == "" ]]; then
  NI="N"
fi
if [[ "$NI" == "N" ]] || [[ "$NI" = "n" ]]; then
  echo -e "\nInstalling NodeJS...\n"
  brew install nodejs
fi

read -p "\nInstalling neovim...\n"
brew install neovim

echo -e "\nInstalled...\n"
