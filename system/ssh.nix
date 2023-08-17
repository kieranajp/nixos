{ pkgs, ... }:

{
  services.openssh = {
    enable = true;
    # require public key authentication for better security
    settings.PasswordAuthentication = false;
    settings.KbdInteractiveAuthentication = false;
  };

  users.users.kieran.openssh.authorizedKeys.keys = let
      authorizedKeys = pkgs.fetchurl {
        url = "https://github.com/kieranajp.keys";
        sha256 = "sha256-73k8/sTYpcZ+XPovbSvz0V6wiBzdBLkjTwxSa90w6jE=";
      };
    in pkgs.lib.splitString "\n" (builtins.readFile authorizedKeys);
}