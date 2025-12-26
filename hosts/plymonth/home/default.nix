{ username, useremail, ... }: {
  home.stateVersion = "24.05";

  home.username = username;
  home.homeDirectory = "/home/${username}";

  programs.home-manager.enable = true;

  imports = [
    # Program configurations (programs.*)
    # These are configuration modules, not package installations
    ./configs

    # User packages (home.packages)
    # For packages that only need installation without configuration
    ./packages.nix

    # Custom files (home.file)
    ./files
  ];
}
