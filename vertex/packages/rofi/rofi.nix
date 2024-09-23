{ config, pkgs, ...}: {
  programs.rofi = {
    package = pkgs.rofi-wayland;
    enable = true;
    theme = "${./squared-nord.rasi}";
  };
}
