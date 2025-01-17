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
    ./hardware-configuration-laptop.nix
    ../../common/sysconfiguration.nix
  ];

  ##################
  ### BOOTLOADER ###
  ##################
  boot.loader = {
    grub = {
      enable = true;
      zfsSupport = true;
      efiSupport = true;
      efiInstallAsRemovable = true;
      configurationLimit = 10;
      mirroredBoots = [
        {
          devices = [ "nodev" ];
          path = "/boot";
        }
      ];
    };
  };

  ##################
  ### NETWORKING ###
  ##################
  networking = {
    hostName = "thinker";
    hostId = "559df6c4";
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
  programs = {
  };

  ################
  ### SERVICES ###
  ################
  services = {
    xserver = {
      xkb = {
        variant = "dvorak";
      };
    };
  };
  ###########
  ### ETC ###
  ###########
  console.keyMap = "dvorak";
}
