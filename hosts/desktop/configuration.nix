{
  config,
  pkgs,
  lib,
  inputs,
  ...
}:

{
  imports = [
    ./hardware-configuration-desktop.nix
    ../../common/sysconfiguration.nix
    ./config
  ];
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
