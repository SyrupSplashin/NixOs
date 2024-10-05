{ config, pkgs, ...}: {
  imports = [
    ./hypr
    ./zsh
    ./zathura
    ./rofi
    ./alacritty
    ./tmux
  ];
}
