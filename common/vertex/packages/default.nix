{ config, pkgs, ...}: {
  imports = [
    ./zsh/zsh.nix
    ./zathura/zathura.nix
  ];
}
