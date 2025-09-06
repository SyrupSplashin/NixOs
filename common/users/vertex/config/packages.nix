{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Communication & Social
    discord # voice and text chat for communities
    element-desktop # matrix protocol client for secure messaging
    telegram-desktop # cross-platform messaging with cloud sync
    signal-desktop-bin # privacy-focused encrypted messaging
    protonmail-desktop # encrypted email client
    irssi # terminal-based IRC client

    # Media & Entertainment
    mpv # minimal media player with extensive codec support
    qbittorrent # open-source bittorrent client

    # Productivity & Office
    anki-bin # spaced repetition flashcard software
    obsidian # knowledge management with linked notes
    libreoffice-qt # full office suite with qt integration

    # Graphics & Design
    gimp # advanced image editing and manipulation

    # System & Desktop Integration
    xdg-desktop-portal-hyprland # desktop portal for hyprland compositor
    xdg-desktop-portal-gtk # gtk implementation of desktop portals
    swaynotificationcenter # notification daemon for wayland
    gnome-themes-extra # additional gtk themes including adwaita-dark
    adwaita-qt # qt theme matching gnome adwaita

    # File Management & Archives
    zip # create and extract zip archives
    unzip # extract zip archives
    xz # lzma compression utility
    zstd # fast compression algorithm
    gnutar # tape archive utility for creating tarballs

    # Text Processing & Search
    ripgrep # fast recursive regex search tool
    bat # cat replacement with syntax highlighting
    gnused # stream editor for filtering and transforming text
    gawk # pattern scanning and processing language

    # System Information & Monitoring
    lsd # colorful ls replacement with icons and git info
    dysk # disk usage utility with better formatting than df
    fastfetch # fast system information display tool
    sysstat # system performance monitoring tools (sar, iostat)
    lm_sensors # hardware monitoring for temperature and fans
    ethtool # ethernet device configuration and diagnostics
    pciutils # pci device utilities including lspci
    usbutils # usb device utilities including lsusb

    # Network Tools & Analysis
    mtr # network diagnostic combining ping and traceroute
    iperf3 # network bandwidth measurement tool
    dnsutils # dns utilities including dig and nslookup
    ldns # dns library with drill command as dig alternative
    socat # multipurpose relay tool for network connections
    nmap # network exploration and security auditing
    ipcalc # ip subnet calculator for network planning
    wavemon # wireless network monitoring in terminal
    winbox4 # mikrotik router configuration tool
    protonvpn-gui # ProtonVPN Graphical Client

    # Download & Transfer
    aria2 # multi-connection download accelerator

    # Security & Encryption
    gnupg # openpgp encryption and signing tools

    # Development & System Utilities
    file # determine file types
    which # locate commands in path
    tree # display directory structure as tree

    # Fun & Miscellaneous
    rofimoji # emoji picker for rofi launcher
    cbonsai # grow bonsai trees in your terminal
    cmatrix # matrix digital rain terminal screensaver
  ];
}
