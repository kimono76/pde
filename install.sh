#install nix
curl -L https://nixos.org/nix/install | sh  

#source nix
. ~/.nix-profile/etc/profile.d/nix.sh

#install packages
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



