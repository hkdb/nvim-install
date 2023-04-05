#!/bin/bash

# Install wget if it's not installed
echo -e "\nInstalling neovim...\n"

read -p "Is golang installed? (y/N)" GOI
if [[ "$GOI" == "N" ]] || [[ "$GOI" = "n" ]]; then
  echo -e "\nInstalling GoLang...\n"
  brew install go
  echo -e "\nInstalling Glow...\n"
  brew install glow
fi

read -p "Is Python and python-pylint-venv installed? (y/N)" PEI
if [[ "$PEI" == "N" ]] || [[ "$PEI" = "n" ]]; then
  echo -e "\nInstalling GoLang...\n"
  brew install python3
  pip3 install pylint-venv
fi

brew install go neovim

echo -e "\nInstalled...\n"
