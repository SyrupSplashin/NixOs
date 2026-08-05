{ config, pkgs, ...}: {
  services.hyprpaper = {
	enable = true;
	settings = {
		preload = "${./background/Background_Landscape.png}";
		wallpaper = "eDP-1,${./background/Background_Landscape.png}";
	};
  };
}
