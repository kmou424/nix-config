{ username, ... }:
let
  hostname = "stella";
in
{
  imports = [
    # import common configs
    ../../common

    # install basic packages
    ../../modules/pkgs

    # No desktop environment for headless server
    # No laptop-specific configs (bluetooth, power management)
    # No GPU drivers needed for virtual machine

    # system-level configs (boot, stateVersion, etc.)
    ../../system

    # device-specific hardware configs
    ./hardware

    # device-specific system configs (environment, firewall, etc.)
    ./system
  ];

  networking.hostName = hostname;
}
