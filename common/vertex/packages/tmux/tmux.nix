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
      }
    ];
    extraConfig = ''
      unbind C-b
      set -g prefix C-space
      bind C-Space send-prefix
      set -g default-terminal screen-256color
    '';
  };
}
