{
  config,
  pkgs,
  lib,
  inputs,
  ...
}:

{
  imports = [
    ./hardware-configuration-desktop.nix
    ../../common/sysconfiguration.nix
  ];

  ##################
  ### BOOTLOADER ###
  ##################
  boot.loader = {
    systemd-boot = {
      enable = true;
      configurationLimit = 10;
    };
    efi.canTouchEfiVariables = true;

  };
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
    logitech.wireless = {
      enable = true;
      enableGraphical = true;
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
  environment.systemPackages = with pkgs; [
    solaar # Manager for logitech devices
    logitech-udev-rules # Added bit to make solaar work
    cudatoolkit # Dep for AI tools
  ];

  # Desktop System Modules
  programs = {
  };

  ################
  ### SERVICES ###
  ################
  services = {
    xserver = {
      videoDrivers = [ "nvidia" ];
      xkb = {
        layout = "us";
      };
    };
    blueman = {
      enable = true;
    };
  };
}
