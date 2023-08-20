{ lib, pkgs, ... }: 

let 
  mod = "Mod4";

  term = "st";
  
in {
  xsession.enable = true;

  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;

    config = {
      modifier = mod;

      fonts = [ "pango:Hack Nerd Font Mono, FontAwesome 10" ];

      gaps = {
        inner = 30;
        outer = 10;
        top = 0;
        bottom = 0;
      };

      keybindings = lib.mkOptionDefault {
        #
        # launch shortcuts
        #
        "${mod}+Return" = "exec --no-startup-id ${term}";
        
        #
        # i3 base stuff
        #
        # Reload
        "${mod}+Shift+r" = "restart";

        # Kill
        "${mod}+q" = "kill";
      };
    };
  };
}