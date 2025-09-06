{
  nixvim,
  ...
}:
{
  imports = [
    nixvim.nixosModules.nixvim
    ./config/default.nix
  ];
}
