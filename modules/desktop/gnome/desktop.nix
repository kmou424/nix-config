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
   ];
  };

  environment.systemPackages = (with pkgs; [
    gnome.gnome-tweaks
    # file manager
    # cinnamon.nemo
    # cinnamon.nemo-with-extensions
    # text editor
    libsForQt5.kate
    # terminal
    libsForQt5.konsole
    # an easy way to edit dconf
    gnome.dconf-editor
    # gnome virtual box
    gnome.gnome-boxes
    # gnome screenshot tool
    gnome.gnome-screenshot
    # editor
    gnome.gedit
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

  # for gnome extension
  services.gnome.gnome-browser-connector.enable = true;

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
    epiphany # web browser
    geary # email reader
    evince # document viewer
    gnome-characters
    totem # video player
    simple-scan
  ]);
}
