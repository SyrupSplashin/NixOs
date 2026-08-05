# This can be built with nixos-rebuild --flake .#myhost build
{
  description = "the simplest flake for nixos-rebuild";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stormy = {
      url = "github:ashish0kumar/stormy";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      nixvim,
      stormy,
      ...
    }@inputs:
    {
      nixosConfigurations = {
        thinker = nixpkgs.lib.nixosSystem { # Thinkpad T480S
          system = "x86_64-linux";
          specialArgs = {
            inherit inputs nixvim stormy;
          };
          modules = [
            ./hosts/thinker/configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.extraSpecialArgs = { inherit nixvim; };
              home-manager.users.vertex = {
                imports = [
                  ./hosts/thinker/users/vertex/home.nix
                ];
              };
            }
          ];
        };
        octopamine = nixpkgs.lib.nixosSystem { # Home Desktop
          system = "x86_64-linux";
          specialArgs = {
            inherit inputs nixvim stormy;
          };
          modules = [
            ./hosts/octopamine/configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.extraSpecialArgs = { inherit nixvim; };
              home-manager.users.vertex = {
                imports = [
                  ./hosts/octopamine/users/vertex/home.nix
                ];
              };
            }
          ];
        };
        graviton = nixpkgs.lib.nixosSystem { # Dell Latitude
          system = "x86_64-linux";
          specialArgs = {
            inherit inputs nixvim stormy;
          };
          modules = [
            ./hosts/graviton/configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.extraSpecialArgs = { inherit nixvim; };
              home-manager.users.vertex = {
                imports = [
                  ./hosts/neuronix/users/vertex/home.nix
                ];
              };
            }
          ];
        };
        neuronix = nixpkgs.lib.nixosSystem { # Thinpad E15 G4
          system = "x86_64-linux";
          specialArgs = {
            inherit inputs nixvim stormy;
          };
          modules = [
            ./hosts/neuronix/configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.extraSpecialArgs = { inherit nixvim; };
              home-manager.users.vertex = {
                imports = [
                  ./hosts/graviton/users/vertex/home.nix
                ];
              };
            }
          ];
        };
      };
    };
}
