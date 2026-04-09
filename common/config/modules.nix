{
  programs = {
    nixvim = {
      enable = true;
    };
    firefox = {
      enable = true;
    };
    git = {
      enable = true;
    };
    zsh = {
      enable = true;
    };
    hyprland = {
      enable = true;
      xwayland.enable = true;
    };
    ssh = {
      # startAgent = true;
    };
  };
}
