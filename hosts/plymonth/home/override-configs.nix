{ ... }: {
  # Apply custom .profile
  home.file.".profile".text = ''
    export XDG_DATA_DIRS=$XDG_DATA_DIRS:/usr/share:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share
  '';
}