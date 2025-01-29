{ config, input, ... }: {
  xdg.desktopEntries = {
    # code = {
    #   name = "Visual Studio Code";
    #   comment = "Code Editing. Redefined";
    #   categories = ["Utility" "TextEditor" "Development" "IDE"];
    #   icon = "vscode";
    #   exec="code --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland --unity-launch %F";
    # };
    obsidian = {
      name = "Obsidian";
      comment = "Knowledge base";
      categories = ["Office"];
      icon = "obsidian";
      exec = "obsidian --enable-features=UseOzonePlatform --ozone-platform=wayland --ozone-platform-hint=auto";
    };
    vesktop = {
      name = "vesktop";
      categories = ["Network" "InstantMessaging" "Chat"];
      genericName = "Internet Messanger";
      icon = "vesktop";
      exec = "vesktop --enable-features=UseOzonePlatform --ozone-platform=wayland %U";
    };
  };
}
