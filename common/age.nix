{ username, ... }:
{
  age.identityPaths = [ "/etc/age/key" ];

  systemd.tmpfiles.rules = [
    "f /etc/age/key 0600 root root - -"
  ];

  # common secrets
  age.secrets.id_ed25519 = {
    file = ../secrets/id_ed25519.age;
    path = "/home/${username}/.ssh/id_ed25519";
    owner = username;
    group = username;
    mode = "0600";
  };

  # server secrets
  age.secrets.id_ed25519_server = {
    file = ../secrets/id_ed25519_server.age;
    path = "/home/${username}/.ssh/id_ed25519_server";
    owner = username;
    group = username;
    mode = "0600";
  };
}
