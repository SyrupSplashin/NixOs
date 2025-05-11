{
  programs.nixvim = {
    plugins.tmux-navigator = {
      enable = true;
      autoload = true;
    };
  };
}
