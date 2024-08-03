{ config, pkgs, ... }:

{
  security = {
    polkit.enable = true;
    pam.services.kwallet = {
      name = "kwallet";
      enableKwallet = true;
    };
  };
}