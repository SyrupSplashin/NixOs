{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    alsa-utils # utilities for ALSA
    easyeffects # pipewire frontend
    playerctl # utility / lib for controlling media
    wget
    git
    kitty
    wl-clipboard
    # C tools
    clang
    clang-tools
    cmake
    ###
    p7zip # 7zip archive tool
    zathura
    cliphist # clipboard utility for wayland
    grimblast # hyprland screenshot utility
    nemo
    ntfs3g # For mounting ntfs drives
    imv # image viewer
    rustdesk
    nodejs_22
    ms-sys # Microsoft compatible boot records
    cdrkit
    exfat # filesystem
    exfatprogs # exfat utils
  ];
}
