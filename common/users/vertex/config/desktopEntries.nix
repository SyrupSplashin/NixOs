{ config, input, ... }:
{
  xdg.desktopEntries = {
    # code = {
    #   name = "Visual Studio Code";
    #   comment = "Code Editing. Redefined";
    #   categories = ["Utility" "TextEditor" "Development" "IDE"];
    #   icon = "vscode";
    #   exec="code --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland --unity-launch %F";
    # };
    obsidian-url-handler = {
      name = "Obsidian URL Handler";
      exec = "obsidian %U"; # %U passes the full URL to the application
      type = "Application";
      terminal = false;
      categories = [
        "Office"
        "TextEditor"
      ];
      mimeType = [ "x-scheme-handler/obsidian" ];
    };
    obsidian = {
      name = "Obsidian";
      comment = "Knowledge base";
      categories = [ "Office" ];
      icon = "obsidian";
      exec = "obsidian --enable-features=UseOzonePlatform --ozone-platform=wayland --ozone-platform-hint=auto";
      mimeType = [ "x-scheme-handler/obsidian" ]; # This is the crucial line
    };
    vesktop = {
      name = "vesktop";
      categories = [
        "Network"
        "InstantMessaging"
        "Chat"
      ];
      genericName = "Internet Messanger";
      icon = "vesktop";
      exec = "vesktop --enable-features=UseOzonePlatform --ozone-platform=wayland %U";
    };
    Anytype = {
      name = "Anytype";
      categories = [
        "Utility"
        "Office"
        "ProjectManagement"
      ];
      genericName = "Notes app";
      icon = "anytype";
      exec = "anytype --enable-features=UseOzonePlatform --ozone-platform=wayland";
    };
    imv = {
      name = "imv";
      categories = [
        "Graphics"
        "Viewer"
      ];
      genericName = "Image viewer";
      exec = "imv";
    };
  };
}
