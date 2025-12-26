{
  description = "kmou424's NixOS Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    stable.url = "github:NixOS/nixpkgs/nixos-25.11";

    # third party
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "stable";
    };

    grub2-themes = {
      url = "github:vinceliuice/grub2-themes";
    };
  };

  outputs =
    inputs@{ nixpkgs, ... }:
    let
      consts = import ./consts.nix;
      username = consts.username;
      useremail = consts.useremail;
      system = "x86_64-linux";
    in
    {
      nixosConfigurations = (
        import ./hosts {
          inherit
            inputs
            system
            username
            useremail
            ;
        }
      );
    };
}
