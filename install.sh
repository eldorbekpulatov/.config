#!/bin/bash

# Specify the directory where you want to clone the repository
packer_directory=~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Check if the directory exists
if [ ! -e "$packer_directory" ]; then
    git clone --depth 1 https://github.com/wbthomason/packer.nvim "$packer_directory"
    echo "Packer.nvim cloned successfully!"
else
    echo "Packer.nvim already exists!"
fi

cp ./tmux/.tmux.conf  ~/
cp ./zsh/.zshrc  ~/
