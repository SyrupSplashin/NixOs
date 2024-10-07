{ config, pkgs, ... }: {
  programs.kitty = {
    enable = true;
    shellIntegration.enableZshIntegration = true;
    themeFile = "Nightfox";
    settings = {
      # Font Config
      font_family = "MesloLGM Nerd Font Mono";
      font_size = 13;
      # Theming
      background_opacity = "0.85";
      background = "#181818";
      window_padding_width = 20;
      # Other
      confirm_os_window_close = 0;
      enable_audio_bell = "no";
    };
  };
}
