{ pkgs, ... }: {
  programs.hyprland = {
    # Install the packages from nixpkgs
    enable = true;
    # Whether to enable XWayland
    xwayland.enable = true;

    # Optional
    # Whether to enable patching wlroots for better Nvidia support
    enableNvidiaPatches = true;
  };

  environment.systemPackages = with pkgs; [
    wofi

    # hyprland
    waybar
    eww-wayland
    kitty
    dunst
    pipewire
    libsForQt5.polkit-kde-agent
    libsForQt5.qt5.qtwayland
    qt6.qtwayland
    xdg-desktop-portal-hyprland
  ];
}
