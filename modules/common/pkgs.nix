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

    # programming
    ruby
    go
  ];
}
