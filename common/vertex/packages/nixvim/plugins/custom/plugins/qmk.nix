{
  programs.nixvim = {
    plugins.qmk = {
      enable = true;
      settings = {
        name = "LAYOUT_split_3x6_3";
        layout = [
          "_ x x x x x x _ x x x x x x _"
          "_ x x x x x x _ x x x x x x _"
          "_ x x x x x x _ x x x x x x _"
          "_ _ _ _ x x x _ x x x _ _ _ _"
        ];
      };
    };
  };
}
