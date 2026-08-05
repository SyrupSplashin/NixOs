{ config, pkgs, ... }:

{
  imports = [
    ../../../../common/users/vertex/homeconfiguration.nix
    ./packages
  ];

  ############################
  ### LAPTOP USER PROGRAMS ###
  ############################
  # User Packages
  home.packages = with pkgs; [
  ];

  # User Modules
  programs = {
  };

  ###########
  ### ETC ###
  ###########
  home.stateVersion = "24.05";
}
