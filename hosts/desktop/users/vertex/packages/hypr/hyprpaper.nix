{ config, pkgs, ... }:
{
  services.hyprpaper = {
    enable = true;
    settings = {
      # preload = [
      #   "${./background/Background_Landscape.png}"
      #   "${./background/Background_Portrait.png}"
      # ];
      wallpaper = [
        {
          monitor = "DP-2";
          path = "${./background/Background_Landscape.png}";
        }
        {
          monitor = "HDMI-A-1";
          path = "${./background/Background_Portrait.png}";
        }
      ];
    };
  };
}
