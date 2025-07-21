{
  networking.firewall = {
    enable = true;
    trustedInterfaces = [ "tailscale0" ];
    allowedUDPPorts = [
      41641
      24642
    ];
    allowedTCPPorts = [
      41641
      24642
    ];
  };
}
