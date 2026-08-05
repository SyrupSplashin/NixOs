{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gnuradio
    kodi-wayland # Media Player
    qmk # Keyboard firmware
    pcsx2 # PS2 Emulation
    lollypop # music Player
    streamrip # Music Obtainer
    aichat # TUI for LLMs
  ];
}
