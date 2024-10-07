{ config, pkgs, ...}: {
  imports = [
    ./hypr
    ./zathura
    ./rofi
    ./kitty
    ./starship
    ./zsh
    ./tmux
  ];
}
