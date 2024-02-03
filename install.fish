#!/bin/fish

# Specify the directory where you want to clone the repository
set packer_directory ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Check if the directory exists
if not test -e "$packer_directory"
    git clone --depth 1 https://github.com/wbthomason/packer.nvim $packer_directory
    echo "Packer.nvim cloned successfully!"
else
    echo "Packer.nvim already exists!"
end

cp ./tmux/.tmux.conf  ~/
