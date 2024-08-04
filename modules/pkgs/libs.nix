{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # build theme
    sassc

    # basic
    glib
  ];
}