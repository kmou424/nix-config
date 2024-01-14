{ pkgs, username, ... }: {
  # Don't allow mutation of users outside the config.
  # users.mutableUsers = false;

  imports = [
    ./zsh.nix
  ];

  users.users."${username}" = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [ "wheel" "sudo" username ];
  };
}
