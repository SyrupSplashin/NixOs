{ config, pkgs, ...}: {
  programs.rofi = {
    package = pkgs.rofi-wayland;
    enable = true;
    theme = "${./squared-nord.rasi}";
    extraConfig = {
      case-sensitive = false;
      show-icons = true;
      drun-match-fields = "name,generic,exec,categories,keywords";
      drun-display-format = "{name} [<span weight='light' size='small'><i>({generic})</i></span>]";
      drun-show-actions = false;
      drun = {
        parse-user = true;
        parse-system = true;
      };
      display-drun = "Apps";
    };
  };
}
