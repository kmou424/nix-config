{
  environment.variables = rec {
    # misc for wayland
    GDK_BACKEND = "wayland,x11";
    SDL_VIDEODRIVER = "wayland";
    CLUTTER_BACKEND = "wayland";
 
    # qt for wayland
    QT_AUTO_SCREEN_SCALE_FACTOR = "1";
    QT_QPA_PLATFORM = "wayland;xcb";
    # QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";

    # nvidia
    LIBVA_DRIVER_NAME = "nvidia";
    __GL_VRR_ALLOWED = "0";
  };
}
