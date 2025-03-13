#!/bin/bash

# Ensure the script is run with sudo if installing packages
if [[ $EUID -ne 0 ]]; then
    echo "Note: If additional packages are required, run with sudo."
fi

# Check if necessary packages are installed
REQUIRED_PKGS=("curl" "net-tools")
MISSING_PKGS=()

for pkg in "${REQUIRED_PKGS[@]}"; do
    if ! command -v $pkg &> /dev/null; then
        MISSING_PKGS+=("$pkg")
    fi
done

if [[ ${#MISSING_PKGS[@]} -ne 0 ]]; then
    echo "Missing packages: ${MISSING_PKGS[*]}"
    echo "Install them with: sudo apt install ${MISSING_PKGS[*]}"
fi

# Create a symbolic link to the .bashrc file in dotfiles
if [ -f ~/.bashrc ]; then
    mv ~/.bashrc ~/.bashrc.backup
    echo "Backed up existing .bashrc to ~/.bashrc.backup"
fi

ln -s ~/dotfiles/homefiles/.bashrc ~/.bashrc
echo "Symbolic link created for .bashrc"

# Reminder to reload environment
echo "Run 'source ~/.bashrc' or log out and back in to apply changes."
