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
    qmk # Keyboard firmware
    jan # Local LLM
    pcsx2 # PS2 Emulation
    lollypop #music Playre
    streamrip # Music Obtainer
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
