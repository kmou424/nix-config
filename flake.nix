{
  description = "kmou424's NixOS Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ nixpkgs, home-manager, ... }: let
      consts = import ./consts.nix;
      username = consts.username;
      useremail = consts.useremail;
    in {
      nixosConfigurations = {
        "plymonth" = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";

          specialArgs = { inherit inputs username useremail; };
          modules = [
            ./hosts/plymonth
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users."${username}" = import ./home/plymonth/home.nix;

              home-manager.extraSpecialArgs = { inherit inputs username useremail; };
            }
          ];
        };
      };
    };
}
