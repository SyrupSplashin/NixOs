# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration-laptop.nix
    ../../common/sysconfiguration.nix
  ];
  ##################
  ### NETWORKING ###
  ##################
  networking = {
    hostName = "thinker";
    networkmanager.enable = true;
  };

  ##############################
  ### LAPTOP SYSTEM PROGRAMS ###
  ##############################
  # System Packages
  environment.systemPackages = with pkgs; [
    brightnessctl
  ];

  # System Modules
  programs =
    {
    };

  ################
  ### SERVICES ###
  ################
  services = {
    printing.enable = true;
    openssh = {
      enable = true;
    };
    xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      xkb = {
        layout = "us";
        variant = "dvorak";
      };
    };
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };

  ###########
  ### ETC ###
  ###########
  console.keyMap = "dvorak";
}
