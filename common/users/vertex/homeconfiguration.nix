{
  nixvim,
  ...
}:
{
  imports = [
    ./packages
    ./config
    nixvim.homeModules.nixvim
  ];
}
