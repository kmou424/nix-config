{ pkgs, username, ... }: {
  # Don't allow mutation of users outside the config.
  # users.mutableUsers = false;

  users.users."${username}" = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [ "wheel" "sudo" username ];
  };
}
