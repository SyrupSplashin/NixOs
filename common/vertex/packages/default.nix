{ config, pkgs, ...}: {
  imports = [
    ./hypr
    ./nvim
    ./zsh/zsh.nix
    ./zathura/zathura.nix
    ./rofi/rofi.nix
    ./alacritty/alacritty.nix
    ./tmux/tmux.nix
  ];
}
