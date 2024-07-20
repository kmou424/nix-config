{ username, useremail, ...}: {
  programs.git = {
    enable = true;
    userName = username;
    userEmail = useremail;
  };
  home.file.".ssh/config".text = ''
    Host github.com
      Hostname ssh.github.com
      Port 443
  '';
}
