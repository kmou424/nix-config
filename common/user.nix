{ pkgs, username, ... }:
{
  # Don't allow mutation of users outside the config.
  # users.mutableUsers = false;

  users.users."${username}" = {
    uid = 1000;
    isNormalUser = true;
    shell = pkgs.fish;
    group = username;
    extraGroups = [
      "wheel"
      "sudo"
    ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDWnIPWQaJTlSpyn/j6+iVOKxsRmOIukRgSP62kriQhJ server"
    ];
  };

  users.groups."${username}" = {
    gid = 1000;
    name = username;
  };
}
