{ pkgs, ... }:
{
  imports = [
    ./cursor.nix
    ./git.nix
    ./ssh
    # ./i3.nix
    # ./redshift.nix
    ./starship.nix
    # ./direnv.nix
    # ./fish.nix
    # ./neovim.nix
    # ./git.nix
    # ./taskwarrior.nix
  ];

  home.packages = with pkgs; [
    htop
    bind
    tcpdump
    zip
    unzip
    neofetch
  ];

  home.stateVersion = "23.05";

  home.sessionVariables = {
    EDITOR = "vim";
  };
}