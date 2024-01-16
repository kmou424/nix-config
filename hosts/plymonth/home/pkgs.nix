{ pkgs, ... }: {
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
    binutils

    # apps
    firefox
    jetbrains-toolbox
  ];
}
