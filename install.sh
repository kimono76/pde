#!/bin/bash

# install nix
curl -L https://nixos.org/nix/install | sh  

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

# install packages
nix-env -iA\
        nixpkgs.zsh\
        nixpkgs.git\
        nixpkgs.antibody\
        nixpkgs.neovim\
        nixpkgs.tmux\
        nixpkgs.stow\
        nixpkgs.yarn\
        nixpkgs.fzf\
        nixpkgs.ripgrep\
        nixpkgs.bat\
        nixpkgs.direnv\
	nixpkgs.gh\

# add zsh to valid shells
command -v zsh | sudo tee -a /etc/shells

# use zsh as default shell
sudo chsh -s $(which zsh) $USER

# create an empty config file for zsh
touch ~/.zshrc

# append nix startup to zsh
echo "if [ -e /home/vi-leno-ub/.nix-profile/etc/profile.d/nix.sh ]; then . /home/vi-leno-ub/.nix-profile/etc/
       │ profile.d/nix.sh; fi # added by Nix installer" >> ~/.zshrc

# 

