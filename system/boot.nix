{ inputs, pkgs, ... }: {
  boot.loader = {
    timeout = 10;
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
    };
    grub = {
      efiSupport = true;
      # efiInstallAsRemovable = true;
      device = "nodev";
      useOSProber = true;
      # font = "${pkgs.meslo-lgs-nf}/share/fonts/truetype/MesloLGS NF Regular.ttf";
      fontSize = 36;
    };
    grub2-theme = {
      enable = true;
      theme = "vimix";
      footer = true;
    };
  };
}
