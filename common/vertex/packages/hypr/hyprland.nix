{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      exec-once = [
        "hyprpaper"
        "waybar"
        "dunst"
        "wl-paste --type text --watch cliphist store"
      ];
      layerrule = [
        "blur,rofi"
        "blur,waybar"
      ];
      animations = {
        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
        animation = [
          "windows, 1, 7, myBezier"
          "windowsOut, 1, 7, default, popin 80%"
          "border, 1, 10, default"
          "borderangle, 1, 8, default"
          "fade, 1, 7, default"
          "workspaces, 1, 6, default"
        ];
      };
      master = {
        new_status = "slave";
      };
      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };
      bind = [
        # General Stuff
        "$mainMod, RETURN, exec, $terminal"
        "$mainMod, W, killactive,"
        "$mainMod, R, exec, $menu"
        "$mainMod Control, Q, exit,"
        "$mainMod Control, grave, exec, hyprlock"
        "$mainMod Shift, grave, exec, systemctl suspend"
        "$mainMod, F, togglefloating,"
        "$mainMod, V, exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy"
        ", Print, exec, grimblast copy area"
        # Move Focus HJKL
        "$mainMod, h, movefocus, l"
        "$mainMod, l, movefocus, r"
        "$mainMod, k, movefocus, u"
        "$mainMod, j, movefocus, d"
        # Move Window HJKL
        "$mainMod Shift, h, movewindow, l"
        "$mainMod Shift, l, movewindow, r"
        "$mainMod Shift, k, movewindow, u"
        "$mainMod Shift, j, movewindow, d"
        # Switch Workspaces
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"
        # Move active window to workspace
        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"
        # Media / volume control
        ",XF86AudioRaiseVolume, exec, amixer set 'Master' 5%+"
        ",XF86AudioLowerVolume, exec, amixer set 'Master' 5%-"
        ",XF86AudioMuteVolume, exec, amixer set 'Master' toggle"
        ",XF86AudioNext, exec, playerctl next"
        ",XF86AudioPrev, exec, playerctl previous"
        ",XF86AudioPlay, exec, playerctl play-pause"
        ",XF86AudioPause, exec, playerctl play-pause"

      ];
      bindm = [
        # Move/Resize with Mouse
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];
      binde = [
        # Resize Window HJKL
        "$mainMod Control, h, resizeactive, -10 0"
        "$mainMod Control, l, resizeactive, 10 0"
        "$mainMod Control, k, resizeactive, 0 -10"
        "$mainMod Control, j, resizeactive, 0 10"
      ];
    };
  };
}
