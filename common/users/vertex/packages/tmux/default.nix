{ config, pkgs, ... }:
{
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
          set -g @catppuccin_status_background "none"
          #   set -g @catppuccin_window_right_separator "█ "
          set -g @catppuccin_status_left_separator "█"
          set -g @catppuccin_status_right_separator "█"
          set -g @catppuccin_window_current_number_color "#fab387"
          set -g @catppuccin_window_number_color "#89b4fa"
          set -g @catppuccin_window_text_color "#313244"
          set -g @catppuccin_window_current_text_color "#313244"
          set -g status-right-length 100
          set -g status-left-length 100
          set -g status-left ""
          set -g status-right "#{E:@catppuccin_status_application}"
          set -ag status-right "#{E:@catppuccin_status_session}"
          set -ag status-right "#{E:@catppuccin_status_uptime}"
        '';
      }
    ];
    extraConfig = ''
      unbind C-b
      set -g prefix C-space
      bind C-Space send-prefix
      set -g default-terminal "tmux-256color"
      set -g status-position top
      setw -g mouse on
      setw -g mode-keys vi
      set -g status 2
      set -g status-format[1] ""
    '';
  };
}
