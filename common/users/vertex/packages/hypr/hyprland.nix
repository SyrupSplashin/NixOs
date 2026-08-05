{ config, pkgs, hostName ? config.networking.hostName, ... }:

let
  commonLuaPath = /etc/nixos/common/users/vertex/packages/hypr/hyprland.lua;
  deviceLuaPath = /etc/nixos/hosts/${hostName}/users/vertex/packages/hypr/hyprland.lua;
in
{
  wayland.windowManager.hyprland.enable = true; # enable Hyprland

  # Link the source files into .config/hypr/
  home.file.".config/hypr/common.lua".source = commonLuaPath;
  home.file.".config/hypr/device.lua".source = deviceLuaPath;

  # Entrypoint file that Hyprland reads
  home.file.".config/hypr/hyprland.lua".text = ''
    -- Load base configuration
    dofile(os.getenv("HOME") .. "/.config/hypr/common.lua")

    -- Load host/device overrides
    dofile(os.getenv("HOME") .. "/.config/hypr/device.lua")
  '';
}