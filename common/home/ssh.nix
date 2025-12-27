{ config, username, ... }:
{
  home.file.".ssh/config".text = ''
    Host github.com
      Hostname ssh.github.com
      Port 443
  '';

  home.file.".ssh/id_ed25519.pub".text = ''
    ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC3CVZURwvGl6w++vcfP6i/tciYK3W4lnDBsbQ//q6dy me@kmou424.moe
  '';

  home.file.".ssh/id_ed25519_server.pub".text = ''
    ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDWnIPWQaJTlSpyn/j6+iVOKxsRmOIukRgSP62kriQhJ server
  '';
}
