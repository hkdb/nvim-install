#!/bin/bash

# Install wget if it's not installed
which wget
if [[ "$?" != 0 ]]; then
  read -p "wget is not found. Do you want to install it? (Y/n)" IWGET
  if [[ "$IWGET" == "" ]]; then
    IWGET="Y"
  fi
  if [[ "$IWGET" == "Y" ]] || [[ "$IWGET" == "y" ]]; then
    echo -e "\nInstalling neovim...\n"
    brew install neovim
  else
    echo -e "\nwget is required for this script to work and you have choosen not to install it... exiting...\n"
    exit 1
  fi
fi

