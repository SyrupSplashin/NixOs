{config, pkgs, ...}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      ls = "lsd";
      vim = "nvim";
      ip = "ip -c";
    };
    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/zsh-powerlevel10k.zsh-theme";
      }
      {
        name = "powerlevel10k-config";
        src = ./config;
        file = "p10k.zsh";
      }
    ];
  };
}