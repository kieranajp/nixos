{ config, pkgs, ... }:

{
  gtk = {
    enable = true;
    theme = {
      name = "Catppuccin-Macchiato-Pink-Dark";
      package = pkgs.catppuccin-gtk;
      # override {
        #accents = [ "pink" ];
        #size = "standard";
        #tweaks = [ "rimless" "normal" "black" ];
        #variant = "frappe";
      #};
    };

    iconTheme = {
      package = pkgs.gnome.adwaita-icon-theme;
      name = "Adwaita";
    };

    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };

    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };
}