{ config, pkgs, ...}: {
  programs.tmux = {
    enable = true;
    sensibleOnTop = true;
    plugins = with pkgs; [
      {
        plugin = tmuxPlugins.vim-tmux-navigator;
      }
      {
        plugin = tmuxPlugins.catppuccin;
        extraConfig = ''
          set -g @catppuccin_status_background "default"
          set -g @catppuccin_window_right_separator "█ "
          set -g @catppuccin_status_left_separator "█"
          set -g @catppuccin_status_right_separator "█"
          set -g @catppuccin_date_time_text "%Y-%m-%d %H:%M:%S"
          set -g  status-right "#{E:@catppuccin_status_application}"
          set -ag status-right "#{E:@catppuccin_status_session}"
          set -ag status-right "#{E:@catppuccin_status_user}"
          set -ag status-right "#{E:@catppuccin_status_host}"
          set -ag status-right "#{E:@catppuccin_status_date_time}"
        '';
      }
    ];
    extraConfig = ''
      unbind C-b
      set -g prefix C-space
      bind C-Space send-prefix
      set -g default-terminal screen-256color
      set -g status-position top
      set -g status 2
      set -g status-format[1] ""
    '';
  };
}
