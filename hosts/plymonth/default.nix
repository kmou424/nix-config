{ username, ... }:
let
  hostname = "plymonth";
in
{
  imports = [
    # import common configs
    ../../common

    # laptop-specific configs (bluetooth, power management)
    ../../common/laptop

    # install basic packages
    ../../modules/pkgs

    # desktop environment
    ./desktop

    # install needed drivers
    # ../../modules/drivers/amd-gpu.nix
    ../../modules/drivers/nvidia.nix

    # system-level configs (boot, stateVersion, etc.)
    ../../system

    # device-specific hardware configs
    ./hardware

    # device-specific system configs (environment, firewall, laptop-lid, etc.)
    ./system
  ];

  # NVIDIA driver configuration
  nvidia.open = false; # Use proprietary driver (not open source)

  networking.hostName = hostname;
  # networking.computerName = hostname;
  # system.defaults.smb.NetBIOSName = hostname;
}
