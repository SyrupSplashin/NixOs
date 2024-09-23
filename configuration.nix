# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, inputs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];
##################
### BOOTLOADER ###
##################
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

##################
### NETWORKING ###
##################
  networking = {
    hostName = "thinker";
    networkmanager.enable = true;
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
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

##################
### USER SETUP ###
##################
  users.users = {
    vertex = {
	isNormalUser = true;
	description = "vertex";
	extraGroups = [ "networkmanager" "wheel" ];
	shell = pkgs.zsh;
    };
  };

################
### PROGRAMS ###
################
# System Packages
  environment.systemPackages = with pkgs; [
	wget
	git
	alacritty
  ];

# System Modules
  programs = {
    firefox = {
      enable = true;
    };
    neovim = {
      enable = true;
      defaultEditor = true;
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

####################
### SYSTEM FONTS ###
####################
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      (nerdfonts.override { fonts = [ "Meslo" ];})
    ];
  };

###########
### ETC ###
###########
  system.stateVersion = "24.05";
  console.keyMap = "dvorak";
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  nixpkgs.config.allowUnfree = true;
}
