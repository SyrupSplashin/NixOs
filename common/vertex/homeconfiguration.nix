{ config, pkgs, ... }:
{
  imports = [
    ./packages
    # ./desktopEntries.nix
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
      VISUAL = "nvim";
      EDITOR = "$VISUAL";
    };
  ################
  ### PACKAGES ###
  ################
    packages = with pkgs; [
    # Applications
      discord
      zip
      xz
      unzip
      anki-bin
      gimp # FOSS photoshop
      telegram-desktop
      obsidian
      mpv

    # Utilities
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

    # Miscellaneous
      file
      which
      tree
      gnused
      gnutar
      gawk
      zstd
      gnupg # OpenPGP
      dunst # Notif daemon
      gnome-themes-extra
      adwaita-qt
      fastfetch # cause meme
    ];
  };

  ###############
  ### MODULES ###
  ###############
  programs = {
    git = {
      enable = true;
      userName = "SyrupSplashin";
      userEmail = "vertex@syrupsplash.in";
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
