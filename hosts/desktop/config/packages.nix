{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    solaar # Manager for logitech devices
    logitech-udev-rules # Added bit to make solaar work
    cudatoolkit # Dep for AI tools
    teamviewer
  ];
}
