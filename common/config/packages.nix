{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Audio & Media
    alsa-utils # utilities for ALSA
    easyeffects # pipewire frontend
    playerctl # utility / lib for controlling media

    # Core System Tools
    wget
    git
    wl-clipboard # wayland clipboard utility

    # Terminal & CLI
    kitty # terminal emulator
    stormy # CLI utility that displays weather

    # Development Tools
    clang
    clang-tools
    cmake
    nodejs_22

    # Archive & Compression
    p7zip # 7zip archive tool

    # File Management & Viewers
    zathura # document viewer
    nemo # file manager
    imv # image viewer
    celluloid # mpv frontend

    # Hyprland/Wayland Utilities
    cliphist # clipboard utility for wayland
    grimblast # hyprland screenshot utility

    # Filesystem Support
    ntfs3g # for mounting NTFS drives
    exfat # exFAT filesystem
    exfatprogs # exFAT utilities
    sshfs # remote filesystem mounting over SSH

    # System/Boot Tools
    ms-sys # Microsoft compatible boot records
    cdrkit # CD/DVD creation tools
  ];
}
