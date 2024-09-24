{config, pkgs, ...}: {
  imports = [
    ./hypr
    ./zsh/zsh.nix
    ./rofi/rofi.nix
    ./alacritty/alacritty.nix
    ./waybar/waybar.nix
  ];
}
