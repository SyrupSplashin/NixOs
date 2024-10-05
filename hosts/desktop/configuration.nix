# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{
  config,
  pkgs,
  lib,
  inputs,
  ...
}:

{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration-desktop.nix
    ../../common/sysconfiguration.nix
  ];

  ################
  ### HARDWARE ###
  ################

  hardware = {
    bluetooth = {
      enable = true;
      powerOnBoot = true;
    };
    graphics = {
      enable = true;
    };
    nvidia = {
      modesetting.enable = true;
      powerManagement.enable = true;
      powerManagement.finegrained = false;
      open = false;
      nvidiaSettings = true;
    };
  };

  ##################
  ### NETWORKING ###
  ##################
  networking = {
    hostName = "octopamine";
    networkmanager.enable = true;
  };

  ########################
  ### DESKTOP PROGRAMS ###
  ########################
  # System Packages
  environment.systemPackages =
    with pkgs;
    [
    ];

  # Desktop System Modules
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
      videoDrivers = [ "nvidia" ];
      displayManager.gdm.enable = true;
      xkb = {
        layout = "us";
      };
    };
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
    blueman = {
      enable = true;
    };
  };
}
