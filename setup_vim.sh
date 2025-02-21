#!/bin/bash

# Define the path to your dotfiles repository and vim-config folder
DOTFILES_DIR="/home/ubuntu/dotfiles" # Correct path to your dotfiles
VIM_CONFIG_DIR="$DOTFILES_DIR/vim-config"

# Copy the .vimrc file to the user's home directory
echo "Copying .vimrc to the home directory..."
cp $VIM_CONFIG_DIR/.vimrc ~/.vimrc

# Install Vundle if not already installed
echo "Checking if Vundle is installed..."
if [ ! -d "~/.vim/bundle/Vundle.vim" ]; then
    echo "Installing Vundle..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
    echo "Vundle is already installed."
fi

# Install plugins using Vundle
echo "Installing Vim plugins..."
vim +PluginInstall +qall

echo "Vim setup complete!"

