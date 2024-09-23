{ config, pkgs, ...}: {
  programs.rofi = {
    enable = true;
    theme = "${./squared-nord.rasi}";
  };
}
