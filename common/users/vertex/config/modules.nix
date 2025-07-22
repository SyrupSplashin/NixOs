{
  programs = {
    git = {
      enable = true;
      userName = "SyrupSplashin";
      userEmail = "vertex@syrupsplash.in";
      extraConfig = {
        init.defaultBranch = "main";
        pull.rebase = false;
      };
    };
    fzf = {
      enable = true;
      enableZshIntegration = true;
    };
    btop = {
      enable = true;
      settings = {
        color_theme = "nord";
        theme_background = false;
        rounded_corners = false;
      };
    };
  };
}
