{ config, pkgs, callPackage, ... }: {

  services.xserver = {
    enable = true;
    autorun = true;
    layout = "us";
    # xkbOptions = "caps:swapescape"; # Swap caps-lock with escape.
    videoDrivers = [ "nvidia" ];
    
    libinput = {
      enable = true;
      mouse = {
        accelProfile = "flat"; # Disable acceleration.
        middleEmulation = false; # Disable emulating middle click using left + right clicks;
      };
    };

    displayManager = {
      defaultSession = "xsession";
      sddm.autoNumlock = true;
    };

    # windowManager.i3 = {
      # enable = true;
      # package = pkgs.i3-gaps;
    # };

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

  console.useXkbConfig = true;
}