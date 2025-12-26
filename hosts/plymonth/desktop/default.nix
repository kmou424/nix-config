{
  # Desktop environment configuration for this device
  imports = [
    # Common desktop components (fonts, input-method, themes)
    ../../../modules/desktop

    # Specific desktop environment
    ../../../modules/desktop/kde.nix
    # ../../../modules/desktop/gnome
    # ../../../modules/desktop/hyprland.nix
    # ../../../modules/desktop/cinnamon.nix
    # ../../../modules/desktop/pantheon.nix

    # Flatpak and fixes
    ../../../modules/flatpak
  ];
}
