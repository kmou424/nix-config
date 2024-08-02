{ pkgs, ... }: {
  environment.systemPackages = with pkgs.gnomeExtensions; [
    pano # clipboard managaer
    ddterm # drop down terminal
    forge # tilling window manager
    gsconnect
    dash-to-dock # dock bar
    kimpanel # input method pannel
    just-perfection # customize
    logo-menu # cool icon
    notification-banner-reloaded # customize notifiction position
    panel-corners # custom corners
    pinguxnetlabel # netspeed indicator
    space-bar # workspace indicator
    spotify-tray
    kimpanel
  ];
}
