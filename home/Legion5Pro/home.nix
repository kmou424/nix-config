{ config, pkgs, username, useremail, ... }: { 
  home.username = username;
  home.homeDirectory = "/home/${username}";

  programs.git = {
    enable = true;
    userName = username;
    userEmail = useremail;
  };

  home.packages = with pkgs; [
    zip
    unzip
    p7zip

    # misc
    cowsay
    file
    which
    tree
    gnused
    gnutar
    gawk
    zstd
    lz4
    gnupg

    lsof
    tree

    # system tools
    lm_sensors # for `sensors` command
    ethtool
    pciutils # lspci
    usbutils # lsusb

    # apps
    firefox
  ];

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;

  # Apply custom .profile
  home.file.".profile".source = ./.profile;

  imports = [
  ];
}
