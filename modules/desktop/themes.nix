{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # gtk themes
    bibata-cursors
    whitesur-gtk-theme
    whitesur-icon-theme
    papirus-icon-theme
  ];
}
