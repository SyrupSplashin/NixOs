{ config, pkgs, ... }:

{
  home.username = "vertex";
  home.homeDirectory = "/home/vertex";
  imports = [
    ./packages
    ../../../common/vertex/homepackages.nix
  ];
  # link the configuration file in current directory to the specified location in home directory
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  # link all files in `./scripts` to `~/.config/i3/scripts`
  # home.file.".config/i3/scripts" = {
  #   source = ./scripts;
  #   recursive = true;   # link recursively
  #   executable = true;  # make all files executable
  # };
  # encode the file content in nix configuration file directly
  # home.file.".xxx".text = ''
  #     xxx
  # '';

  # set cursor size and dpi for 4k monitor

#############################
### DESKTOP USER PROGRAMS ###
#############################
# User Packages
  home.packages = with pkgs; [
  ];

# Desktop User Modules
  programs = {
  };

###########
### ETC ###
###########
  home.stateVersion = "24.05";
}
