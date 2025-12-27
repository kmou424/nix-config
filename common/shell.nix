{
  username,
  hostname,
  pkgs,
  ...
}:
{
  programs.fish = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      nixos-upgrade = "sudo nixos-rebuild switch --upgrade --flake /etc/nixos#${hostname}";
      nixos-deploy = "sudo nixos-rebuild switch --flake /etc/nixos#${hostname}";
      nixos-update = "nix flake update";
      nixos-store-repair = "sudo nix-store --repair --verify --check-contents";
    };
  };

  programs.starship = {
    enable = true;
  };

  programs.zsh.enable = true;
}
