{ pkgs, ... }: {
  hardware.graphics.extraPackages = with pkgs; [
    amdvlk
  ];

  # To enable Vulkan support for 32-bit applications, also add:
  hardware.graphics.extraPackages32 = with pkgs; [
    driversi686Linux.amdvlk
  ];
}
