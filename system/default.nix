{
  imports = [
    ./hardware-configuration.nix

    ./boot.nix
  ];

  system.stateVersion = "24.05";
}
