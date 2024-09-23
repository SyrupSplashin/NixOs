{config, pkgs, ...}: {
  programs.alacritty = {
    enable = true;
    settings = {
      import = ["${./base16-default-dark-256.toml}"];
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
  };
}
