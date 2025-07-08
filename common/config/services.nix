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
    gnome = {
      # gcr-ssh-agent.enable = false;
    };
    xserver = {
      enable = true;
      xkb = {
        layout = "us";
      };
    };
    displayManager = {
      gdm.enable = true;
    };
    desktopManager = {
      gnome.enable = true;
    };
    zfs = {
      autoScrub.enable = true;
    };
    resolved = {
      enable = true;
    };
    tailscale = {
      enable = true;
      useRoutingFeatures = "client";
    };
    gnome = {
      gnome-keyring.enable = true;
    };
  };
}
