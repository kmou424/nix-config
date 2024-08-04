{ pkgs, ... }: {
  home.packages = with pkgs; [
    vscode
    nixpkgs-fmt
  ];
}
