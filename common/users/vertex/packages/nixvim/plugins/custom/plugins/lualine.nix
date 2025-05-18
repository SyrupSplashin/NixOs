{
  programs.nixvim = {
    plugins.lualine = {
      enable = true;
      settings = {
        options = {
          theme = "auto";
          section_separators = " ";
          component_separators = " ";
        };
      };
    };
  };
}
