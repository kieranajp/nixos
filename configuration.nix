{ config, pkgs, ... }:

{
  imports = [
    ./system
    ./machines/desktop.nix
  ];
}