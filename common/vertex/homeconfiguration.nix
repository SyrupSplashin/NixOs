{ config, pkgs, ... }:
{
  imports = [
    ./packages
  ];

  #CursorTheme
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
  home = {
    sessionVariables = {
      ANKI_WAYLAND = 1;
      VISUAL = "nvim";
      EDITOR = "$VISUAL";
    };
    pointerCursor = {
      gtk.enable = true;
      # x11.enable = true;
      name = "BreezeX-RosePine-Linux";
      package = pkgs.rose-pine-cursor;
      size = 16;
    };
    packages = with pkgs; [
      #applications
      discord
      zip
      xz
      unzip
      anki-bin
      # utils
      ripgrep # recursively searches directories for a regex pattern
      lsd # A modern replacement for ‘ls’
      bat # cat clone with syntax highlighting

      # networking tools
      mtr # A network diagnostic tool
      iperf3 # Network Benchmark
      dnsutils # `dig` + `nslookup`
      ldns # replacement of `dig`, it provide the command `drill`
      aria2 # A lightweight multi-protocol & multi-source command-line download utility
      socat # replacement of openbsd-netcat
      nmap # A utility for network discovery and security auditing
      ipcalc # it is a calculator for the IPv4/v6 addresses
<<<<<<< HEAD
      wavemon # Wireless Interface Monitor
=======
      winbox # mikrotik
>>>>>>> 5adb4b8 (added winbox for gui mikrotik config)

      # misc
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

      # system tools
      sysstat
      lm_sensors # for `sensors` command
      ethtool
      pciutils # lspci
      usbutils # lsusb
    ];
  };
  # User Modules
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
