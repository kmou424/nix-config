{ lib, pkgs, ... }: {

  # Enable unfree packages
  nixpkgs.config.allowUnfree = lib.mkForce true;

  # Enable CUPS to print documents.
  services.printing.enable = true;

  services = {
    gvfs.enable = true; # Mount, trash, and other functionalities
    tumbler.enable = true; # Thumbnail support for images
  };

  zramSwap = {
    enable = true;
    # one of "lzo", "lz4", "zstd"
    algorithm = "zstd";
    # Priority of the zram swap devices.
    # It should be a number higher than the priority of your disk-based swap devices
    # (so that the system will fill the zram swap devices before falling back to disk swap).
    priority = 5;
    # Maximum total amount of memory that can be stored in the zram swap devices (as a percentage of your total memory).
    # Defaults to 1/2 of your total RAM. Run zramctl to check how good memory is compressed.
    # This doesn’t define how much memory will be used by the zram swap devices.
    memoryPercent = 50;
  };

  # Power management
  services = {
    power-profiles-daemon = {
      enable = false;
    };
    upower.enable = true;
  };

  # replace default editor with nano
  environment.variables.EDITOR = "nano";

  # Enable flatpak
  services.flatpak.enable = true;
}
