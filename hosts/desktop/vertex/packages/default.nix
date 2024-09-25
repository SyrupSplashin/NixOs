{config, pkgs, ...}: {
  imports = [
    ./hypr
    ./rofi/rofi.nix
    ./alacritty/alacritty.nix
    ./waybar/waybar.nix
  ];
}
