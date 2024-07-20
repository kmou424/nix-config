{ username, hostname, pkgs, ... }: {
  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      nix-quick-upgrade = "sudo nixos-rebuild switch --upgrade --flake /etc/nixos#${hostname}";
      nix-quick-deploy = "sudo nixos-rebuild switch --flake /etc/nixos#${hostname}";
      nix-quick-update = "nix flake update";
      nix-quick-store-repair = "sudo nix-store --repair --verify --check-contents";
    };
    histSize = 10000;
    histFile = "/home/${username}/.zsh_history";
  };
}
