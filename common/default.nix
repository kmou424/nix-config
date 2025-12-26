{
  username,
  lib,
  pkgs,
  ...
}:
{
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  imports = [
    ./i18n.nix
    ./kernel.nix
    ./misc.nix
    ./networking.nix
    ./nixgc.nix
    ./pkgs.nix
    ./sound.nix
    ./sudo.nix
    ./user.nix
    ./shell.nix
    ./flatpak.nix
    # Laptop-specific configs (bluetooth, power) are in ./laptop/
    # Import them in device configs that need them
  ];

  nix.settings = {
    trusted-users = [ username ];

    substituters = [
      # cache mirror located in China
      # status: https://mirror.sjtu.edu.cn/
      "https://mirror.sjtu.edu.cn/nix-channels/store"
      # status: https://mirrors.ustc.edu.cn/status/
      # "https://mirrors.ustc.edu.cn/nix-channels/store"

      "https://cache.nixos.org"
    ];

    trusted-public-keys = [
      # the default public key of cache.nixos.org, it's built-in, no need to add it here
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
    ];
  };
}
