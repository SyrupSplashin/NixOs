{ config, pkgs, ... }:
{
  imports = [
    ./packages
    ./desktopEntries.nix
  ];

  ###################
  ### USER CONFIG ###
  ###################
  home = {
    username = "vertex";
    homeDirectory = "/home/vertex";
  };
  ######################
  ### THEME SETTINGS ###
  ######################
  gtk = {
    enable = true;
    cursorTheme = {
      name = "BreezeX-RosePine-Linux";
      package = pkgs.rose-pine-cursor;
      size = 16;
    };
    theme = {
      name = "Adwaita-dark";
      package = pkgs.gnome-themes-extra;
    };
  };
  qt = {
    enable = true;
    platformTheme.name = "gtk";
    style = {
      name = "adwaita-dark";
    };
  };
  home.pointerCursor = {
    gtk.enable = true;
    # x11.enable = true;
    name = "BreezeX-RosePine-Linux";
    package = pkgs.rose-pine-cursor;
    size = 16;
  };

  #################
  ### VARIABLES ###
  #################
  home = {
    sessionVariables = {
      ANKI_WAYLAND = 1;
      NIXOS_OZONE_WL = 1;
    };
    ################
    ### PACKAGES ###
    ################
    packages = with pkgs; [
      # Applications
      discord
      element-desktop
      vesktop
      telegram-desktop
      signal-desktop-bin
      youtube-music
      anki-bin
      gimp
      obsidian
      anytype
      mpv
      qbittorrent
      libreoffice-qt
      protonmail-desktop
      irssi

      # Utilities
      xdg-desktop-portal-hyprland
      ripgrep # recursively searches directories for a regex pattern
      lsd # A modern replacement for ‘ls’
      bat # cat clone with syntax highlighting
      mtr # A network diagnostic tool
      iperf3 # Network Benchmark
      dnsutils # `dig` + `nslookup`
      ldns # replacement of `dig`, it provide the command `drill`
      aria2 # A lightweight multi-protocol & multi-source command-line download utility
      socat # replacement of openbsd-netcat
      nmap # A utility for network discovery and security auditing
      ipcalc # it is a calculator for the IPv4/v6 addresses
      wavemon # Wireless Interface Monitor
      winbox4 # mikrotik
      sysstat
      lm_sensors # for `sensors` command
      ethtool
      pciutils # lspci
      usbutils # lsusb
      zip
      xz
      unzip
      dysk # better version of df to fetch disk space utilization

      # Miscellaneous
      file
      which
      tree
      gnused
      gnutar
      gawk
      zstd
      gnupg # OpenPGP
      swaynotificationcenter # notif daemon
      gnome-themes-extra
      adwaita-qt
      fastfetch # cause meme
      rofimoji # rofi-based emoji menu
      cbonsai
      cmatrix
    ];
  };
  ####################
  ### DEFAULT APPS ###
  ####################
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "image/png" = [ "imv.desktop" ];
      "image/jpeg" = [ "imv.desktop" ];
      "image/gif" = [ "imv.desktop" ];
      "image/svg+xml" = [ "imv.desktop" ];
    };
  };

  ####################
  ### CONFIG FILES ###
  ####################
  home.file = {
    ".config/vesktop/themes/midnight.theme.css" = {
      source = ./configs/vesktop/midnight.theme.css;
    };
  };
  ###############
  ### MODULES ###
  ###############
  programs = {
    git = {
      enable = true;
      userName = "SyrupSplashin";
      userEmail = "vertex@syrupsplash.in";
      extraConfig = {
        init.defaultBranch = "main";
        pull.rebase = false;
      };
    };
    fzf = {
      enable = true;
      enableZshIntegration = true;
    };
    btop = {
      enable = true;
      settings = {
        color_theme = "nord";
        theme_background = false;
        rounded_corners = false;
      };
    };
  };
}
