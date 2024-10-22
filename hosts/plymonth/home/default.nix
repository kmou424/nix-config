{ username, useremail, ... }: {
  home.stateVersion = "24.05";

  home.username = username;
  home.homeDirectory = "/home/${username}";

  programs.home-manager.enable = true;

  imports = [
    ./apps
    ./override-configs.nix
    ./git.nix
  ];
}
