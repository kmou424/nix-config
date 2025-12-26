{ ... }: {
  # SSH client configuration
  home.file.".ssh/config".text = ''
    Host github.com
      Hostname ssh.github.com
      Port 443
  '';
}

