#!/bin/bash

read -p "Is golang installed? (y/N)" GOI
if [[ "$GOI" == "N" ]] || [[ "$GOI" = "n" ]]; then
  echo -e "\nInstalling GoLang...\n"
  sudo dnf install golang
  echo -e "\nInstalling Glow...\n"
  go install github.com/charmbracelet/glow@latest
fi

read -p "Is Python installed? (y/N)" PI
if [[ "$PI" == "" ]]; then
  PI="N"
fi
if [[ "$PI" == "N" ]] || [[ "$PI" = "n" ]]; then
  echo -e "\nInstalling Python...\n"
  sudo dnf install python3
fi

read -p "Is python-pylint-venv installed? (y/N)" PEI
if [[ "$PEI" == "" ]]; then
  PEI="N"
fi
if [[ "$PEI" == "N" ]] || [[ "$PEI" = "n" ]]; then
  echo -e "\nInstalling pylint-venv...\n"
  pip install pylint-venv
fi

read -p "Is nodejs installed? (y/N)" NI
if [[ "$NI" == "" ]]; then
  NI="N"
fi
if [[ "$NI" == "N" ]] || [[ "$NI" = "n" ]]; then
  echo -e "\nInstalling NodeJS...\n"
  sudo dnf module install nodejs:18/common
fi

echo -e "\nInstalling Neovim...\n"
flatpak install neovim

echo -e "\nInstalled...\n"
