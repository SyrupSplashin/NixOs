{ pkgs, ... }:
{
  home.packages = with pkgs; [
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
    xdg-desktop-portal-gtk
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
}
