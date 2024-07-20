{ username, ... }:
  let hostname = "plymonth";
in {
  imports = [
    ../../modules
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
