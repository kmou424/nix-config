{ username, ... }: let hostname = "Legion5Pro";
in {
  imports = [
    ../../modules/desktop
    ../../pkgs/drivers/nvidia.nix

    ../../system

    ./cpufreq.nix
    ./environment.nix
    ./firewall.nix
    ./laptop-lid.nix
  ];

  networking.hostName = hostname;
  # networking.computerName = hostname;
  # system.defaults.smb.NetBIOSName = hostname;
}
