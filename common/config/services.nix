{
  services = {
    teamviewer.enable = true;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
    printing.enable = true;
    avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };
    openssh = {
      enable = true;
    };
    xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;
      xkb = {
        layout = "us";
      };
    };
    zfs = {
      autoScrub.enable = true;
    };
    resolved = {
      enable = true;
    };
    gnome = {
      gnome-keyring.enable = true;
    };
  };
}
