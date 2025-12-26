{
  networking.firewall.enable = true;

  imports = [
    ./firewall_allow.nix
    ./firewall_deny.nix
  ];
}

