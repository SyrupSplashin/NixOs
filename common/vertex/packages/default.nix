{ config, pkgs, ...}: {
  imports = [
    ./hypr
    ./zsh/zsh.nix
    ./zathura/zathura.nix
    ./rofi/rofi.nix
    ./alacritty/alacritty.nix
  ];
}
