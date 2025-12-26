{ pkgs, ... }: {
  # User packages installed via home.packages
  # Separate from program configurations for clarity
  home.packages = with pkgs; [
    # Development tools
    vscode
    nixpkgs-fmt

    # Applications
    microsoft-edge
    clash-verge-rev
  ];
}

