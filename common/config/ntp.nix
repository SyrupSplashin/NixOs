{
  services.chrony = {
    enable = true;
    servers = [ ];

    extraConfig = ''
      # Stratum 1 NTP servers with options
      server time-a-g.nist.gov iburst minpoll 4 maxpoll 6
      server time-b-g.nist.gov iburst minpoll 4 maxpoll 6
      server time-c-g.nist.gov iburst minpoll 4 maxpoll 6
      server tick.usno.navy.mil iburst minpoll 4 maxpoll 6
      server tock.usno.navy.mil iburst minpoll 4 maxpoll 6
      server ntp-wwv.nist.gov iburst minpoll 4 maxpoll 6

      # Allow large time corrections
      makestep 1.0 3

      # Enable hardware timestamping if supported
      hwtimestamp *

      # Local stratum fallback
      local stratum 10
    '';
  };

  services.timesyncd.enable = false;
}
