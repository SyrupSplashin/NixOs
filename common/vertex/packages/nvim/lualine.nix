{ config, pkgs, ...}: {
  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
      lualine-nvim
    ];
    extraLuaConfig = ''
      require("lualine").setup({
        options = {
          icons_enabled = true,
          theme = 'auto',
	  section_separators = " ", 
	  component_separators = " "
        },
      })
      vim.opt.showmode = false
    '';
  };
}
