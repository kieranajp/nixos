{ config, pkgs, ... }:
{
  programs = {
    git = {
      enable = true;
      userName = "Kieran Patel";
      userEmail = "kieranajp@users.noreply.github.com";

      extraConfig = {
        init.defaultBranch = "main";
        push.default = "current";
      };
    };
  };
}