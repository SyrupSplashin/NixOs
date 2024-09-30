{ config, pkgs, lib, inputs, ...}: {
    nixpkgs.overlays = [
      inputs.syrupnvim.overlays.default
    ];
# System Packages
  environment.systemPackages = with pkgs; [
  alsa-utils # utilities for ALSA
  playerctl # utility / lib for controlling media
	wget
	git
	alacritty
	wl-clipboard
	# C tools
	clang
	clang-tools
	cmake
	zathura
	cliphist
	nvim-pkg # custom nvim config
  grimblast # hyprland screenshot utility
  ];

# System Modules
  programs = {
    firefox = {
      enable = true;
    };
#    neovim = {
#      enable = true;
#      defaultEditor = true;
#    };
    git = {
      enable = true;
    };
    zsh = {
      enable = true;
    };
    hyprland = {
      enable = true;
    };
  };
}
