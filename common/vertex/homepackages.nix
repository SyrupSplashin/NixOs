{ config, pkgs, ...}: {
  imports = [
    ./packages
  ];
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
#    gnupg # OpenPGP
    dunst # Notif daemon

    # system tools
    sysstat
    lm_sensors # for `sensors` command
    ethtool
    pciutils # lspci
    usbutils # lsusb
  ];

# User Modules
  programs = {
    git = {
      enable = true;
      userName = "SyrupSplashin";
      userEmail = "vertex@syrupsplash.in";
    };
    zoxide = {
      enable= true;
      enableZshIntegration = true;
      options = ["--cmd cd"];
    };
    fzf = {
      enable = true;
      enableZshIntegration = true;
    };
  };
}
