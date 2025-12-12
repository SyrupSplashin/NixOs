{
  programs = {
    git = {
      enable = true;
      settings = {
        user = {
          name = "SyrupSplashin";
          email = "vertex@syrupsplash.in";
        };
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
