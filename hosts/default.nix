{ inputs, system, username, useremail, ... }:

let
  nixosSystem = inputs.nixpkgs.lib.nixosSystem;
  home-manager = inputs.home-manager;
  grub2-themes = inputs.grub2-themes;
in
{
  plymonth = nixosSystem (
    let
      hostname = "plymonth";
      extraArgs = { inherit inputs system username useremail hostname; };
    in
    {
      inherit system;
      specialArgs = extraArgs;
      modules = [
        ./${hostname}

        grub2-themes.nixosModules.default
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users."${username}" = import ./${hostname}/home;

          home-manager.extraSpecialArgs = extraArgs;
        }
      ];
    }
  );
}
