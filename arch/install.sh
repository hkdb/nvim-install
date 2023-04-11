#!/bin/bash
echo -e "\nInstalling neovim and dependencies...\n"
sudo pacman -S --needed lsb-release go nodejs python python-pip python-pylint-venv neovim

echo -e "\nInstalling Glow...\n"
go install github.com/charmbracelet/glow@latest

echo -e "\nInstalled...\n"

