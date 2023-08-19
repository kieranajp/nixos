{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    git
    mosh
    curl
    wget
    htop
    google-chrome
    kbs2
    vscode-fhs
    duplicacy
    openssl
    tailscale
  ];

  programs = {
    _1password = {
      enable = true;
    };

    _1password-gui = {
      enable = true;
      polkitPolicyOwners = ["kieran"];
    };

    thunar = {
      enable = true;
    };
  };

  services.tailscale.enable = true;
}
