{ username, ... }:
  let hostname = "plymonth";
in {
  imports = [
    # import common configs
    ../../common

    # install basic packages
    ../../modules/pkgs
    # enable desktop environment
    ../../modules/desktop

    # install needed drivers
    ../../modules/drivers/amd-gpu.nix
    ../../modules/drivers/nvidia.nix

    ../../system

    ./edid-fix.nix
    ./kernel.nix
    ./environment.nix
    ./firewall.nix
    ./laptop-lid.nix
  ];

  networking.hostName = hostname;
  # networking.computerName = hostname;
  # system.defaults.smb.NetBIOSName = hostname;
}
