{
  services = {
    xserver = {
      videoDrivers = [ "nvidia" ];
      xkb = {
        layout = "us";
      };
    };
    blueman = {
      enable = true;
    };
  };
  systemd.services.NetworkManager-wait-online.enable = false;
}
