{ config, lib, pkgs, ... }:

let 
  mod = "Mod4";
in {
  services.xserver.windowManager.i3 = {
    # config = {
    #   modifier = mod;

    #   fonts = [ "pango:Hack Nerd Font Mono, FontAwesome 10" ];

    #   title_align = "center";

    #   gaps = {
    #     inner = 30;
    #     outer = 10;
    #     top = 0;
    #     bottom = 0;
    #   };
    # };
  };
}