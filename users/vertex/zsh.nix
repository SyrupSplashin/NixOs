{config, pkgs, ...}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "powerlevel10k/powerlevel10k";
    };
    shellAliases = {
      ls = "lsd";
      vim = "nvim";
      ip = "ip -c";
    };
  };
}
