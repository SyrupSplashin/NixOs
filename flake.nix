# This can be built with nixos-rebuild --flake .#myhost build
{
  description = "the simplest flake for nixos-rebuild";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    syrupnvim.url = "github:SyrupSplashin/nix.nvim";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      syrupnvim,
      ...
    }@inputs:
    {
      nixosConfigurations = {
        thinker = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = {
            inherit inputs;
          };
          modules = [
            ./hosts/laptop/configuration.nix
            # Home-Manager Conf
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.vertex = {
                imports = [
                  ./hosts/laptop/vertex/home.nix
                ];
              };
            }
          ];
        };
        octopamine = nixpkgs.lib.nixosSystem {
          system = "x86_64-linx";
          specialArgs = {
            inherit inputs;
          };
          modules = [
            ./hosts/desktop/configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.vertex = {
                imports = [
                  ./hosts/desktop/vertex/home.nix
                ];
              };
            }
          ];
        };
      };
    };
}
