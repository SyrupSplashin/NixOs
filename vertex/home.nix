{ config, pkgs, ... }:

{
  home.username = "vertex";
  home.homeDirectory = "/home/vertex";
  imports = [
    ./packages/zsh/zsh.nix
    ./packages/hypr/hyprland.nix
    ./packages/hypr/hyprpaper.nix
    ./packages/alacritty/alacritty.nix
  ];
  # link the configuration file in current directory to the specified location in home directory
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  # link all files in `./scripts` to `~/.config/i3/scripts`
  # home.file.".config/i3/scripts" = {
  #   source = ./scripts;
  #   recursive = true;   # link recursively
  #   executable = true;  # make all files executable
  # };

  # encode the file content in nix configuration file directly
  # home.file.".xxx".text = ''
  #     xxx
  # '';

  # set cursor size and dpi for 4k monitor
  xresources.properties = {
    "Xcursor.size" = 16;
    "Xft.dpi" = 172;
  };
################
### PROGRAMS ###
################
# User Packages
  home.packages = with pkgs; [
    #applications
    discord
    zip
    xz
    unzip

    # utils
    ripgrep # recursively searches directories for a regex pattern
    lsd # A modern replacement for ‘ls’
    fzf # A command-line fuzzy finder
    bat # cat clone with syntax highlighting

    # networking tools
    mtr # A network diagnostic tool
    iperf3 # Network Benchmark
    dnsutils  # `dig` + `nslookup`
    ldns # replacement of `dig`, it provide the command `drill`
    aria2 # A lightweight multi-protocol & multi-source command-line download utility
    socat # replacement of openbsd-netcat
    nmap # A utility for network discovery and security auditing
    ipcalc  # it is a calculator for the IPv4/v6 addresses

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

    # system tools
    sysstat
    lm_sensors # for `sensors` command
    ethtool
    pciutils # lspci
    usbutils # lsusb
  ];

# User Modules
  programs.git = {
    enable = true;
    userName = "SyrupSplashin";
    userEmail = "vertex@syrupsplash.in";
  };

  programs.zoxide = {
    enable= true;
    enableZshIntegration = true;
    options = ["--cmd cd"];
  };

###########
### ETC ###
###########
  home.stateVersion = "24.05";
}
