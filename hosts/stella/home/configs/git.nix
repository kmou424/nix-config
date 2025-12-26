{ username, useremail, ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user.email = useremail;
      user.name = username;
    };
  };
}
