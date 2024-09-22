{config, pkgs, ...}: {
  programs.alacritty = {
    enable = true;
    settings = {
      font = {
	size = 11.0;
	normal = {
	  family = "MesloLGM Nerd Font Mono";
	};
      };
      window = {
	opacity = 0.85;
	padding = {
	  x = 20;
	  y = 20;
	};
      };
    };
  }
}
