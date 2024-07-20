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
      system = "x86_64-linux";
    in {
      nixosConfigurations = (
        import ./hosts {
          inherit inputs system username useremail;
        }
      );
    };
}
