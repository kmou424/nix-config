{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    pulseaudio # provides `pactl`, which is required by some apps(e.g. sonic-pi)
  ];

  # rtkit is optional but recommended
  security.rtkit.enable = true;
  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;
}
