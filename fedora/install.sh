#!/bin/bash

echo -e "\nInstalling neovim...\n"

read -p "Is golang installed? (y/N)" GOI
if [[ "$GOI" == "N" ]] || [[ "$GOI" = "n" ]]; then
  echo -e "\nInstalling GoLang...\n"
  sudo dnf install golang
  echo -e "\nInstalling Glow...\n"
  go install github.com/charmbracelet/glow@latest
fi

read -p "Is python-pylint-venv installed? (y/N)" PEI
if [[ "$PEI" == "N" ]] || [[ "$PEI" = "n" ]]; then
  echo -e "\nInstalling GoLang...\n"
  pip install pylint-venv
fi

echo -e "\nInstalling Neovim...\n"
flatpak install neovim

echo -e "\nInstalled...\n"
