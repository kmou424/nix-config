{ username, ... }: {
  security.sudo.extraRules = [{
    commands = [{
      command = "ALL";
      options = [ "NOPASSWD" ];
    }];
    users = [ username ];
  }];
}
