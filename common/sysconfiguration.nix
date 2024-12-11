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
  boot.loader = {
    systemd-boot = {
      enable = true;
      configurationLimit = 10;
    };
    efi.canTouchEfiVariables = true;

  };

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
  ### SYSTEM PACKAGES ###
  #######################
  environment.systemPackages = with pkgs; [
    alsa-utils # utilities for ALSA
    playerctl # utility / lib for controlling media
    wget
    git
    alacritty
    kitty
    wl-clipboard
    # C tools
    clang
    clang-tools
    cmake
    zathura
    cliphist # Broken currently
    nvim-pkg # custom nvim config
    grimblast # hyprland screenshot utility
    nemo
    ntfs3g # For mounting ntfs drives
  ];
  ######################
  ### SYSTEM MODULES ###
  ######################
  programs = {
    firefox = {
      enable = true;
    };
    #    neovim = {
    #      enable = true;
    #      defaultEditor = true;
    #    };
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
