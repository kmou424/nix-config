{ inputs, system, username, useremail, ... }:

let
  nixosSystem = inputs.nixpkgs.lib.nixosSystem;
  home-manager = inputs.home-manager;
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
