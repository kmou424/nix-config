{ username, ... }: let hostname = "Legion5Pro";
in {
  imports = [
    ../../modules/desktop
    ../../pkgs/drivers/nvidia.nix

    ../../system

    ./firewall.nix
  ];

  networking.hostName = hostname;
  # networking.computerName = hostname;
  # system.defaults.smb.NetBIOSName = hostname;
}
