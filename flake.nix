{
  description = "NixOS and home-manager configurations";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-23.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { home-manager, nixpkgs, ...}:
  {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem
    {
      system = "x86_64-linux";
      
      modules = [
        ./configuration.nix

        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;

          home-manager.users.kieran = import ./home/default.nix;
        }
      ];
    };
  };
}