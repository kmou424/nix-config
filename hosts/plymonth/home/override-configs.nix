{ ... }: {
  # Apply custom .profile
  home.file.".profile".source = ./.profile;
}
