{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    pipewire
  ];

  services.pipewire = {
    enable = true;
    audio = {
      enable = true;
    };
    pulse = {
      enable = true;
    };
    alsa = {
      support32Bit = true;
      enable = true;
    };
  };
  services.pulseaudio.enable = false;

  # rtkit is optional but recommended
  security.rtkit.enable = true;
}
