{ config, pkgs, callPackage, ... }: {

  services = {
    xserver = {
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
        defaultSession = "none+i3";
        sddm.autoNumlock = true;
      };

      windowManager.i3 = {
        enable = true;
        package = pkgs.i3-gaps;
      };
    };
  };

  console.useXkbConfig = true;
}