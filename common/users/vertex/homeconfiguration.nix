{
  nixvim,
  ...
}:
{
  imports = [
    ./packages
    ./config
    nixvim.homeManagerModules.nixvim
  ];
}
