{ config, pkgs, callPackage, ... }: {

  services = {

    displayManager = {
      defaultSession = "xsession";
      sddm.autoNumlock = true;
    };

    libinput = {
      enable = true;
      mouse = {
        accelProfile = "flat"; # Disable acceleration.
        middleEmulation = false; # Disable emulating middle click using left + right clicks;
      };
    };

    xserver = {
      enable = true;
      autorun = true;
      videoDrivers = [ "nvidia" ];

      xkb = {
        layout = "us";
        # options = "caps:swapescape"; # Swap caps-lock with escape.
      };

      desktopManager.session = [
        {
          name = "xsession";
          start = ''
            ${pkgs.runtimeShell} $HOME/.xsession &
            waitPID=$!
          '';
        }
      ];
    };

  };

  console.useXkbConfig = true;
}