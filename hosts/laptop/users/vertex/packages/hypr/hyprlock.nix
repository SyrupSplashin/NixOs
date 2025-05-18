{ config, pkgs, ...}: {
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
	hide_cursor = true;
      };
      background = {
	  monitor = "eDP-1";
	  path = "${./background/Background_Landscape.png}";
	  blur_passes = 3;
	  blur_size = 4;
	  brightness = 0.5;
      };
      input-field = {
	monitor = "eDP-1";
	size = "250, 60";
	outline_thickness = 2;
	dots_size = 0.2;
	dots_spacing = 0.35;
	dots_center = true;
	outer_color = "rgba(0, 0, 0, 0)";
	inner_color = "rgba(0, 0, 0, 0.2)";
	font_color = "rgb(200, 200, 200)";
	fade_on_empty = false;
	rounding = -1;
	check_color = "rgb(204, 136, 34)";
	placeholder_text = "<i>Input Password...</i>";
	hide_input = false;
	position = "0, -50";
	halign = "center";
	valign = "center";
      };
      label = {
	monitor = "eDP-1";
	text = "cmd[update:1000] date +\"%-I:%M %p\"";
	color = "rgba(200, 200, 200, 1.0)";
	font_size = 55;
	font_family = "Fira Semibold ";
	position = "0, 50";
	halign = "center";
	valign = "center";
	shadow_passes = 5;
	shadow_size = 10;
      };
    };
  };
}
