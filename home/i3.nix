{ lib, pkgs, ... }: 

let 
  mod = "Mod4";

  term = "st";

  browser = "google-chrome-stable";

  fg = "#f0f0f0";
  bg = "#000000";
  ac = "#2f2f2f";
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

      colors = {
        focused = {
          background = "${ac}";
          border = "${ac}";
          childBorder = "${ac}";
          indicator = "${ac}";
          text = "${fg}";
        };
        focusedInactive = {
          background = "${bg}";
          border = "${bg}";
          childBorder = "${bg}";
          indicator = "${bg}";
          text = "${fg}";
        };
        unfocused = {
          background = "${bg}";
          border = "${bg}";
          childBorder = "${bg}";
          indicator = "${bg}";
          text = "${fg}";
        };
        urgent = {
          background = "${bg}";
          border = "${bg}";
          childBorder = "${bg}";
          indicator = "${bg}";
          text = "${fg}";
        };
        placeholder = {
          background = "${bg}";
          border = "${bg}";
          childBorder = "${bg}";
          indicator = "${bg}";
          text = "${fg}";
        };
        background = "${bg}";
      };

      keybindings = lib.mkOptionDefault {
        #
        # launch shortcuts
        #
        "${mod}+Return" = "exec --no-startup-id ${term}";
        "${mod}+Shift+Return" = "exec --no-startup-id ${browser}";
        
        #
        # i3 base stuff
        #
        # Reload
        "${mod}+Shift+r" = "restart";

        # Kill
        "${mod}+q" = "kill";

        # Change layouts
        "${mod}+t" = "layout toggle split";

        # Move around
        "${mod}+h" = "focus left";
        "${mod}+j" = "focus down";
        "${mod}+k" = "focus up";
        "${mod}+l" = "focus right";

        "${mod}+Shift+h" = "move left";
        "${mod}+Shift+j" = "move down";
        "${mod}+Shift+k" = "move up";
        "${mod}+Shift+l" = "move right";

        "${mod}+Shift+e" = "mode System (l) lock (e) logout (r) reboot (p) shutdown";
      };

      modes = lib.mkOptionDefault {
        "System (l) lock (e) logout (r) reboot (p) shutdown" = {
          "e" = "exec --no-startup-id i3-msg exit";
          "l" = "exec --no-startup-id betterlockscreen -l blur";
          "r" = "exec --no-startup-id systemctl reboot";
          "p" = "exec --no-startup-id systemctl poweroff";

          "Return" = "mode default";
          "Escape" = "mode default";
        };
      };
    };
  };
}