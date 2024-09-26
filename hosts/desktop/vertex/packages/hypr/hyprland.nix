{config, pkgs, ...}: {
  wayland.windowManager.hyprland = {
    settings = {
      monitor = [
	"DP-2,preferred,0x0,1"
	"HDMI-A-1,preferred,auto-left,1,transform,1"
	"Unknown-1,disabled"
      ];
      "$terminal" = "alacritty";
      "$mainMod" = "SUPER";
      "$menu" = "rofi -show drun";
      env = [
	"LIBVA_DRIVER_NAME,nvidia"
	"XDG_SESSION_TYPE,wayland"
	"GBM_BACKEND,nvidia-drm"
	"__GLX_VENDOR_LIBRARY_NAME,nvidia"
	"NVD_BACKEND,direct"
      ];
      general = {
	gaps_in = 15;
	gaps_out = 20;
	border_size = 2;
	"col.active_border" = "rgba(7cafc2ee) rgba(455054ee) 45deg";
	"col.inactive_border" = "rgba(595959aa)";
	resize_on_border = true;
	allow_tearing = false;
	layout = "dwindle";
      };
      decoration = {
	rounding = 0;
	active_opacity = 1.0;
	inactive_opacity = 1.0;
	drop_shadow = true;
	shadow_range = 4;
	"col.shadow" = "rgba(1a1a1aee)";
	blur = {
	  enabled = true;
	  size = 3;
	  passes = 2;
	  vibrancy = 0.1696;
	};
      };
      master = {
	new_status = "slave";
      };
      misc = {
	force_default_wallpaper = 0;
	disable_hyprland_logo = true;
      };
      input = {
	kb_layout = "us";
	follow_mouse = 1;
      };
      workspace = [
	"1, monitor:DP-2, persistent:true, default:true"
	"2, monitor:DP-2, persistent:true"
	"3, monitor:DP-2, persistent:true"
	"4, monitor:DP-2, persistent:true"
	"5, monitor:DP-2, persistent:true"
	"6, monitor:DP-2, persistent:true"
	"7, monitor:HDMI-A-1, persistent:true"
	"8, monitor:HDMI-A-1, persistent:true"
	"9, monitor:HDMI-A-1, persistent:true"
	"10, monitor:HDMI-A-1, persistent:true, default:true"
      ];
    };
  };
}
