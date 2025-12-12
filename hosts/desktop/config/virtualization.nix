{ pkgs, ... }:
{
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = [ "vertex" ];
  virtualisation = {
    libvirtd = {
      enable = true;
      onBoot = "ignore";
      onShutdown = "shutdown";
      qemu = {
        # ovmf.enable = true;
        swtpm.enable = true;
      };
    };
    spiceUSBRedirection.enable = true;
  };
  environment = {
    variables = {
      LIBVIRT_DEFAULT_URI = "qemu:///system";
    };
    systemPackages = with pkgs; [
      virt-viewer
    ];
  };

}
