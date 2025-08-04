{
  networking.firewall = {
    enable = true;
    allowPing = true;
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
