{ config, pkgs, ... }:

{
  imports = [
    ./packages
    ../../../common/vertex/homeconfiguration.nix
  ];

#############################
### DESKTOP USER PROGRAMS ###
#############################
# User Packages
  home.packages = with pkgs; [
    gnuradio
    qmk
    jan
  ];

# Desktop User Modules
  programs = {
  };

# Services
  services.ollama = {
    enable = true;
    acceleration = "cuda";
  };

###########
### ETC ###
###########
  home.stateVersion = "24.05";
}
