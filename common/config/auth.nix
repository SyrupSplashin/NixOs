{ pkgs, ... }:
{
  services = {
    pcscd.enable = true;
    udev = {
      packages = [ pkgs.yubikey-personalization ];
      extraRules = ''
        ACTION=="remove", \
         SUBSYSTEM=="hid", \
         ENV{HID_ID}=="0003:00001050:00000406", \
         RUN+="${pkgs.systemd}/bin/loginctl lock-sessions"
      '';
    };
  };
  security.pam.services = {
    login.u2fAuth = true;
    sudo.u2fAuth = true;
  };
  environment.systemPackages = with pkgs; [
    pam_u2f
    yubikey-manager
  ];
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };
}
