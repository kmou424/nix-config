{ pkgs, ... }: {
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome = {
   enable = true;
   extraGSettingsOverridePackages = [ pkgs.gnome.mutter ];
   extraGSettingsOverrides = ''
     [org.gnome.mutter]
     experimental-features=['scale-monitor-framebuffer']
   '';
   sessionPath = with pkgs; [
     gnome.gpaste
   ];
  };

  environment.systemPackages = (with pkgs; [
    gnome.gnome-tweaks
    # file manager
    cinnamon.nemo
    cinnamon.nemo-with-extensions
    # text editor
    libsForQt5.kate
    # terminal
    libsForQt5.konsole
    # an easy way to edit dconf
    gnome.dconf-editor
    # gnome virtual box
    gnome.gnome-boxes
  ]);

  # no online accounts feature
  services.gnome.gnome-online-accounts.enable = false;

  # install gnome terminal
  programs.gnome-terminal.enable = true;

  # install dconf
  programs.dconf.enable = true;

  # ignore gnome games
  services.gnome.games.enable = false;

  # install kde connect
  programs.kdeconnect.enable = true;

  # set qt theme
  qt.platformTheme = "gnome";

  environment.gnome.excludePackages = (with pkgs; [
    gnome-photos
    gnome-tour
    gnome-text-editor
    gnome-console
    gnome-tecla # keyboard viewer
    snapshot # camera
  ]) ++ (with pkgs.gnome; [
    cheese # webcam tool
    gnome-contacts
    gnome-music
    gnome-software
    gnome-maps
    nautilus # file manager
    gedit # text editor
    epiphany # web browser
    geary # email reader
    evince # document viewer
    gnome-characters
    totem # video player
    simple-scan
  ]);
}
