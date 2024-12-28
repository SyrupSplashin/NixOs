{
  config,
  pkgs,
  lib,
  inputs,
  ...
}:
{
  imports = [
    ./overlays.nix
  ];
  ##################
  ### BOOTLOADER ###
  ##################
#  boot.loader = {
#    systemd-boot = {
#      enable = true;
#      configurationLimit = 10;
#    };
#    efi.canTouchEfiVariables = true;
#
#  };
  boot.kernelPackages = pkgs.linuxPackages_latest;

  #####################
  ### TIME / LOCALE ###
  #####################
  # Timezone
  time.timeZone = "America/New_York";

  # Internationalisation properties
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  #############################
  ### EXPERIMENTAL FEATURES ###
  #############################
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  ##################
  ### USER SETUP ###
  ##################
  users.users = {
    vertex = {
      isNormalUser = true;
      description = "vertex";
      extraGroups = [
        "networkmanager"
        "wheel"
      ];
      shell = pkgs.zsh;
    };
  };
  #######################
  #### ENV VARIABLES ####
  #######################
  environment.variables = rec {
    EDITOR = "nvim";
  };
  #######################
  ### SYSTEM PACKAGES ###
  #######################
  environment.systemPackages = with pkgs; [
    alsa-utils # utilities for ALSA
    playerctl # utility / lib for controlling media
    wget
    git
    kitty
    wl-clipboard
    # C tools
    clang
    clang-tools
    cmake
    zathura
    cliphist
    nvim-pkg # custom nvim config
    grimblast # hyprland screenshot utility
    nemo
    ntfs3g # For mounting ntfs drives
    imv # image viewer
    teamviewer
  ];
  ######################
  ### SYSTEM MODULES ###
  ######################
  programs = {
    firefox = {
      enable = true;
    };
    git = {
      enable = true;
    };
    zsh = {
      enable = true;
    };
    hyprland = {
      enable = true;
    };
    ssh = {
      startAgent = true;
    };
  };

  ################
  ### SERVICES ###
  ################
  services = {
    teamviewer.enable = true;
  };
  ####################
  ### SYSTEM FONTS ###
  ####################
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      nerd-fonts.fira-code
      nerd-fonts.meslo-lg
      noto-fonts
    ];
  };

  ####################
  ### OPTIMIZATION ###
  ####################
  nix.gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 1w";
    };
  nix.settings.auto-optimise-store = true;

  ###########
  ### ETC ###
  ###########
  system.stateVersion = "24.05";
  hardware.pulseaudio.enable = false;
  nixpkgs.config.allowUnfree = true;
  security = {
    rtkit.enable = true;
    polkit.enable = true;
    pam.services.hyprlock = { };
  };
}
