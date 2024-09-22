{ config, pkgs, ...}: {
  services.hyprpaper = {
	enable = true;
	settings = {
		preload = "./background/Background_Landscape.png";
		wallpaper = "eDP-1,./backgrounds/Background_Landscape.png";
	};
  };
}
