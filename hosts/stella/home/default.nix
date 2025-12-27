{ username, useremail, ... }:
{
  home.stateVersion = "25.11";

  home.username = username;
  home.homeDirectory = "/home/${username}";

  programs.home-manager.enable = true;

  imports = [
    ../../../common/home

    # Program configurations (programs.*)
    ./configs

    # User packages (home.packages)
    ./packages.nix

    # Custom files (home.file)
    ./files
  ];
}
