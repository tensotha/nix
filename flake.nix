{
  description = "macos/linux flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    darwin.url = "github:lnl7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ nixpkgs, home-manager, nixvim,  darwin, ... }: {
    systems = [ "x86_64-linux" "aarch64-darwin"];
    darwinConfigurations = {
      tensotha = darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        modules = [
          ./hosts/macos/configuration.nix
          ./hosts/macos/home.nix
          inputs.nixvim.nixDarwinModules.nixvim
          home-manager.darwinModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
          }
        ];
      };
    };
    nixosConfigurations.tensotha-nixos = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      system = "x86_64-linux";
      modules = [
       ./hosts/linux/configuration.nix 
       ./hosts/linux/home.nix
        inputs.nixvim.homeManagerModules.nixvim

      home-manager.nixosModules.home-manager
      {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
       }
      ];
    };
  };
}
