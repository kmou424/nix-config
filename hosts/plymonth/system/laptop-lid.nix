{
  # lid behaviour management for laptop
  services.logind.lidSwitch = "suspend";
  services.logind.lidSwitchDocked = "ignore";
  services.logind.lidSwitchExternalPower = "ignore";
  services.logind.powerKey = "hibernate";
  services.logind.powerKeyLongPress = "poweroff";

  # there is no reboot key on Legion 5 Pro
  # services.logind.rebootKey = "reboot";
  # services.logind.rebootKeyLongPress = "reboot";
}

