{ pkgs, ... }:
{
  users.users = {
    vertex = {
      isNormalUser = true;
      description = "vertex";
      extraGroups = [
        "networkmanager"
        "wheel"
      ];
      shell = pkgs.zsh;
    };
  };
}
