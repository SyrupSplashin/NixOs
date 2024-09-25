{ config, pkgs, ...}: {
  programs.zathura = {
    enable = true;
    extraConfig = ''
    include ${./theme/catppuccin-mocha}
    '';
    options = {
      adjust-open = "best-fit";

      scroll-page-aware = true;
      smooth-scroll = true;
      selection-clipboard = "wl-copy";

      recolor = true;
      recolor-reverse-video = true;
      recolor-keephue = true;
    };
  };
}
