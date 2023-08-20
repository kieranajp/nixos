{ pkgs, ... }:

{
  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';

    plugins = [
      { name = "fzf"; src = pkgs.fishPlugins.fzf-fish.src; }
    ];

    shellAliases = {};
  };
}
