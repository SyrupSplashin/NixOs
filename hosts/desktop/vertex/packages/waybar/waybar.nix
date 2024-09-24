{ config, pkgs, ...}: {
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = [{
      output = "DP-2";
      layer = "top";
      height = 32;
      margin-top = 20;
      margin-right = 20;
      margin-left = 20;
      spacing = 0;
# Modules
      modules-left = [
        "custom/logo"
        "hyprland/workspaces"
      ];
      modules-center = [
        "hyprland/window"
      ];
      modules-right = [
        "pulseaudio"
        "network"
        "clock"
        "tray"
        "idle_inhibitor"
      ];
# Module Config
      "hyprland/workspaces" = {
        all-outputs = true;
        format = "";
        format-window-separator = "\n";
      };
      "idle_inhibitor" = {
        format = "{icon}";
        format-icons = {
          activated = "";
          deactivated = "";
        };
      };
      "tray" = {
        spacing = 10;
      };
      "clock" = {
        format = "{:%I:%M %p}";
        tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        format-alt = "{:%Y-%m-%d}";
      };
      "network" = {
        interface = "wlp4s0";
        format-wifi = "{essid} ({signalStrength}%) ";
        format-ethernet = "{ipaddr}/{cidr} ";
        tooltip-format = "{ifname} via {gwaddr} ";
        format-linked = "{ifname} (No IP) ";
        format-disconnected = "Disconnected ⚠";
        format-alt = "{ifname}: {ipaddr}/{cidr}";
      };
      "pulseaudio" = {
        format = "{volume}% {icon}";
        format-muted = " ";
        format-icons = {
          headphone = "";
          default = ["" "" ""];
        };
        on-click = "pavucontrol";
      };
      "custom/logo" = {
        format = "";
      };
    }];
  };
}
