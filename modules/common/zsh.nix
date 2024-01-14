{ username, pkgs, ... }: {
  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      update = "sudo nixos-rebuild switch";
    };
    histSize = 10000;
    histFile = "/home/${username}/.zsh_history";
  };
}
