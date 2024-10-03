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
