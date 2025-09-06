{
  programs.nixvim = {
    plugins.obsidian = {
      enable = true;
      # settings.dir = "~/Documents/AlphaOne";
      settings = {
        legacy_commands = false;
        workspaces = [
          {
            name = "AlphaOne";
            path = "~/Documents/AlphaOne";
          }
        ];
      };
    };
  };
}
