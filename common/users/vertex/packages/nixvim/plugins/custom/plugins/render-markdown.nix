{ pkgs, ... }:
{
  programs.nixvim = {
    extraPlugins = [ pkgs.vimPlugins."render-markdown-nvim" ];
    extraConfigLua = ''
      require('render-markdown').setup({
          completions = { lsp = { enabled = true } },
      })
    '';
  };
}
