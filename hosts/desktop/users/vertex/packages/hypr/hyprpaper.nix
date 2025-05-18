{ config, pkgs, ...}: {
  services.hyprpaper = {
	enable = true;
	settings = {
		preload = [
		  "${./background/Background_Landscape.png}"
		  "${./background/Background_Portrait.png}"
		];
		wallpaper = [
		"DP-2,${./background/Background_Landscape.png}"
		"HDMI-A-1,${./background/Background_Portrait.png}"
		];
	};
  };
}
