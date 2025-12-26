{ config, pkgs, ... }:

{
  # Use the latest stable Linux kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
