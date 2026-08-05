-- Display Configuration
hl.monitor({
    output = "DP-2"
    mode = "preferred"
    position = "0x0"
    scale = 1
})
hl.monitor({
    output = "HDMI-A-1"
    mode = "preferred"
    position = "auto-left"
    scale = 1
    transform = 1
})

--Environment Variables
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("NVD_BACKEND", "direct")
hl.env("GTK_THEME", "Adwaita:dark")
hl.env("QT_QPA_PLATFORMTHEME", "gtk3")
hl.env("QT_STYLE_OVERRIDE", "adwaita-dark")

-- General Configuration
hl.config({
    general = {
        layout = "dwindle",
    },
    input = {
        kb_layout = "us",
        follow_mouse = 2,
        -- Below setting set for Deft Pro
        -- sensitivity = 0.1,
        -- accel_profile = "flat",
        sensitivity = 0.1,
        accel_profile = "flat",
    }
})