{ config, pkgs, ... }:

{
  services.picom = {
    enable = true;

    settings = {
      corner-radius = 12;
      round-borders = 8;
      fading = false;
      inactive-opacity = 0.8;
      frame-opacity = 0.7;
      inactive-opacity-override = false;
      active-opacity = 1.0;

      blur-kern = "3x3box";
      blur = {
        method = "kernel";
        strength = 8;
        background = false;
        background-frame = false;
        background-fixed = false;
        kern = "3x3box";
      };

      shadow = true;
      shadow-radius = 8;
      shadow-opacity = 0.4;
      shadow-offset-x = -8;
      shadow-offset-y = -8;

      backend = "glx";
      vsync = false;
      mark-wmwin-focused = true;
      mark-ovredir-focused = true;
      detect-rounded-corners = true;
      detect-client-opacity = false;
      detect-transient = true;
      detect-client-leader = true;
      use-damage = true;
      log-level = "info";

      wintypes = {
        normal = { fade = false; shadow = false; };
        tooltip = { fade = true; shadow = false; opacity = 0.75; focus = true; full-shadow = false; };
        dock = { shadow = false; };
        dnd = { shadow = false; };
        popup_menu = { opacity = 1.0; };
        dropdown_menu = { opacity = 1.0; };
      };
    };

  };
}