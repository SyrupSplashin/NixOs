{
  xdg = {
    configFile."mimeapps.list".force = true;
    mimeApps = {
      enable = true;
      defaultApplications = {
        "image/png" = [ "imv.desktop" ];
        "image/jpeg" = [ "imv.desktop" ];
        "image/gif" = [ "imv.desktop" ];
        "image/svg+xml" = [ "imv.desktop" ];
        "x-scheme-handler/obsidian" = [ "obsidian-url-handler.desktop" ];
      };
    };
  };
}
