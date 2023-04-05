#!/bin/bash
echo -e "\nInstalling neovim...\n"
sudo pacman -S --needed go python-pylint-venv neovim

echo -e "\nInstalling Glow...\n"
go install github.com/charmbracelet/glow@latest

echo -e "\nInstalled...\n"

