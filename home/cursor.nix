{ config, pkgs, ... }:

{
  home.pointerCursor = 
    let 
      getFrom = url: hash: name: {
        gtk.enable = true;
        x11.enable = true;
        name = name;
        size = 42;
        package = 
          pkgs.runCommand "moveUp" {} ''
            mkdir -p $out/share/icons
            ln -s ${pkgs.fetchzip {
              url = url;
              hash = hash;
            }} $out/share/icons/${name}
        '';
      };
    in
      getFrom 
        "https://github.com/TeddyBearKilla/Afterglow-Cursors-Recolored/releases/download/Catppuccin/Afterglow-Recolored-Catppuccin-Macchiato-v2.tar.gz"
        "sha256-f21KWSQS6ppCfRriQ3Q3ZrCO2C11JrTZOlwRe1X11pw="
        "Catppuccin-Macchiato";
}