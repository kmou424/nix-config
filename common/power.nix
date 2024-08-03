{ lib, pkgs, ... }: {
  # Power management
  services = {
    power-profiles-daemon = {
      enable = false;
    };
    upower.enable = true;
  };
  
  services.auto-cpufreq.enable = true;
  services.auto-cpufreq.settings = {
    battery = {
      governor = "powersave";
      turbo = "never";
    };
    charger = {
      governor = "performance";
      turbo = "auto";
    };
  };
}