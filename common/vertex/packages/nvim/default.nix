{ config, pkgs, ...}: {
  imports = [
	./lualine.nix
  ];
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    plugins = with pkgs.vimPlugins; [
	  catppuccin-nvim
      mini-nvim
      nvim-treesitter
	  catppuccin-nvim
    ];
    extraLuaConfig = ''
      vim.opt.tabstop = 4
      vim.opt.shiftwidth = 4
	  vim.opt.clipboard = "unnamedplus"
	  vim.opt.relativenumber = true
	  vim.opt.fillchars = { eob = ' '}
	  vim.g.have_nerd_font = true
	  require("catppuccin").setup({
	    transparent_background = true,
	  })
	  vim.cmd.colorscheme "catppuccin"
    '';
    };
}
