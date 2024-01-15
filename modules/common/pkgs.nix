{ pkgs, ... }: {
  # Some default system packages
  environment.systemPackages = with pkgs; [
    git
    git-lfs
    nano
    # vim
    wget
    curl
    aria2
    neofetch

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

    # programming
    ruby
    go
  ];
}
