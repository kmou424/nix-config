{ pkgs, ... }: {
  services.xserver = {
    enable = true;
    # Enable touchpad support (enabled default in most desktopManager).
    libinput.enable = true;
    displayManager.lightdm.enable = true;
    desktopManager.pantheon = {
      enable = true;
      extraGSettingsOverridePackages = [ pkgs.pantheon.gala ];
      extraGSettingsOverrides = ''
        [io.elementary.gala]
         experimental-features=['scale-monitor-framebuffer']
      '';
    };
  };

  services.pantheon = {
    # enable contractor
    contractor.enable = true;
    # clean up pre-installed pkgs from elementart
    apps.enable = false;
  };

  # enable tweaks
  programs.pantheon-tweaks.enable = true;

  # keep some pkgs I need
  environment.systemPackages = (with pkgs.pantheon; [
    elementary-terminal
    elementary-calculator
    elementary-calendar
    elementary-files
    elementary-screenshot
    elementary-tasks
    sideload
  ]) ++ (with pkgs; [
    gnome.gnome-system-monitor
  ]);
}
