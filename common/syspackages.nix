{ config, pkgs, lib, inputs, ...}: {
# System Packages
  environment.systemPackages = with pkgs; [
	wget
	git
	alacritty
	wl-clipboard
	# C tools
	clang
	clang-tools
	cmake
	zathura
  ];

# System Modules
  programs = {
    firefox = {
      enable = true;
    };
    neovim = {
      enable = true;
      defaultEditor = true;
    };
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
