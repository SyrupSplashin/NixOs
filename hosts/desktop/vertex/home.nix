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
    pcsx2 # PS2 Emulation
    lollypop # music Player
    streamrip # Music Obtainer
  ];

  # Desktop User Modules
  programs = {
  };

  ###########
  ### ETC ###
  ###########
  home.stateVersion = "24.05";
}
