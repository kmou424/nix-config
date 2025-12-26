{ pkgs, ... }:
{
  # necessary packages
  environment.systemPackages = with pkgs; [
    git
    git-lfs

    # editors
    nano
    # vim
    vim

    # fetch
    wget
    curl
  ];
}
