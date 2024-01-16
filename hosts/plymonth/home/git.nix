{ username, useremail, ...}: {
  programs.git = {
    enable = true;
    userName = username;
    userEmail = useremail;
  };
}
