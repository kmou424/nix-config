{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # tools
    fastfetch # system info
    aria2 # download tool

    zip
    unzip
    p7zip

    # toys
    cowsay
    
    # misc
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

    # system tools
    lm_sensors # for `sensors` command
    ethtool
    pciutils # lspci
    usbutils # lsusb
    binutils

    # programming language
    ruby
    go
  ];
}