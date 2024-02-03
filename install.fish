#!/bin/fish

if [ -n "$BASH_VERSION" ]; then
  echo "Running in Bash. Please use: source install.sh"
else
  set file_path "~/.local/share/nvim/site/pack/packer/start/packer.nvim"
  echo "Not running in Bash"
end

if not test -e "$file_path"
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
else
  echo "Packer already exists!"
end

cp ./tmux/.tmux.conf  ~/
cp ./zsh/.zshrc  ~/
