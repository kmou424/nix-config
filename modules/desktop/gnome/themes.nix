{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    bibata-cursors
  ];
}
