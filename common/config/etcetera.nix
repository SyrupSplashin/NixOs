{
  #############################
  ### EXPERIMENTAL FEATURES ###
  #############################
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  ###########
  ### ETC ###
  ###########
  system.stateVersion = "24.05";
  nixpkgs.config.allowUnfree = true;
  security = {
    rtkit.enable = true;
    polkit.enable = true;
    pam.services.hyprlock = { };
  };
}
