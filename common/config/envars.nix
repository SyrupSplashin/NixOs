{
  environment.variables = rec {
    VISUAL = "nvim";
    EDITOR = "$VISUAL";
    MANPAGER = "nvim +Man!";
  };
}
