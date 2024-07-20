{ pkgs, ... }: {
  services.xserver = {
    enable = true;
    # Enable touchpad support (enabled default in most desktopManager).
    libinput.enable = true;
    displayManager.lightdm.enable = true;
    desktopManager = {
      cinnamon.enable = true;
    };
    displayManager.defaultSession = "cinnamon";
  };

  services.cinnamon.apps.enable = true;

  environment.systemPackages = with pkgs; [
    gnome.gnome-system-monitor
    gnome.gpaste
    coreutils-prefixed
  ];
}
