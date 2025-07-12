{
  programs.nixvim = {
    plugins.obsidian = {
      enable = true;
      # settings.dir = "~/Documents/AlphaOne";
      settings.workspaces = [{
        name = "AlphaOne";
        path = "~/Documents/AlphaOne";}
      ]; 
    };
  };
}
