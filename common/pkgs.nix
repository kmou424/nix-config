{ pkgs, ... }: {
  # necessary packages
  environment.systemPackages = with pkgs; [
    git
    git-lfs

    # editors
    nano
    # vim
    neovim

    # fetch
    wget
    curl
  ];
}