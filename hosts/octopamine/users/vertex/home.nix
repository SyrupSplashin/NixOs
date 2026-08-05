{ config, pkgs, ... }:

{
  imports = [
    ../../../../common/users/vertex/homeconfiguration.nix
    ./packages
    ./config
  ];

  # #############################
  # ### DESKTOP USER PROGRAMS ###
  # #############################
  # # User Packages
  # home.packages = with pkgs; [
  #   gnuradio
  #   qmk # Keyboard firmware
  #   pcsx2 # PS2 Emulation
  #   lollypop # music Player
  #   streamrip # Music Obtainer
  #   aichat # TUI for LLMs
  # ];
  #
  # # Desktop User Modules
  # programs = {
  # };
  #
  # ###########
  # ### ETC ###
  # ###########
  home.stateVersion = "24.05";
}
