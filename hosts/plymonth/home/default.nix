{ username, useremail, ... }: {
  home.stateVersion = "23.11";

  home.username = username;
  home.homeDirectory = "/home/${username}";

  programs.home-manager.enable = true;

  imports = [
    ./pkgs.nix
    ./override-configs.nix
    ./git.nix
  ];
}
