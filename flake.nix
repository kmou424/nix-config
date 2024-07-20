{
  description = "kmou424's NixOS Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ nixpkgs, home-manager, ... }: let
      consts = import ./consts.nix;
      username = consts.username;
      useremail = consts.useremail;

      extraArgs = { inherit inputs username useremail; };
    in {
      nixosConfigurations = {
        "plymonth" = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";

          specialArgs = extraArgs;
          modules = [
            ./hosts/plymonth

            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users."${username}" = import ./hosts/plymonth/home;

              home-manager.extraSpecialArgs = extraArgs;
            }
          ];
        };
      };
    };
}
