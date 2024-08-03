{ pkgs, ... }: {
  hardware.opengl.extraPackages = with pkgs; [
    amdvlk
  ];

  # To enable Vulkan support for 32-bit applications, also add:
  hardware.opengl.extraPackages32 = with pkgs; [
    driversi686Linux.amdvlk
  ];
}
