{ pkgs, username, ... }: {
  # Don't allow mutation of users outside the config.
  # users.mutableUsers = false;

  users.users."${username}" = {
    uid = 1000;
    isNormalUser = true;
    shell = pkgs.zsh;
    group = username;
    extraGroups = [ "wheel" "sudo" ];
  };

  users.groups."${username}" = {
    gid = 1000;
    name = username;
  };
}
