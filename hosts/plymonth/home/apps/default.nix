{ pkgs, ... }: {
  imports = [
    ./vscode.nix
  ];

  home.packages = with pkgs; [
    # apps
    microsoft-edge
    clash-verge-rev
  ];
}
