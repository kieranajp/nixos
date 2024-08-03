{ pkgs, ... }:
{
  imports = [
    ./cursor.nix
    ./git.nix
    ./gtk.nix
    ./ssh
    ./i3.nix
    # ./redshift.nix
    ./starship.nix
    ./helix.nix
    # ./tailscale.nix
    # ./direnv.nix
    ./fish.nix
    # ./neovim.nix
    # ./taskwarrior.nix
  ];

  home.packages = with pkgs; [
    htop
    bind
    tcpdump
    zip
    unzip
    neofetch
    jq
    tmux
    fzf
    bat
  ];

  home.stateVersion = "23.05";

  home.sessionVariables = {
    EDITOR = "vim";
  };
}
