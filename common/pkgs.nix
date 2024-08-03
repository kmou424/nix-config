{ pkgs, ... }: {
  # Some default system packages
  environment.systemPackages = with pkgs; [
    git
    git-lfs
    nano
    # vim
    neovim
    wget
    curl
    aria2
    fastfetch

    # theme
    sassc
    glib

    # programming
    ruby
    go
  ];
}
