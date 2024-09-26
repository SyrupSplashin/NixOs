{config, pkgs, ...}: {
  imports = [
    ./hypr
    ./waybar/waybar.nix
  ];
}
