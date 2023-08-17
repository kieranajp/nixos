{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    git
    curl
    wget
    htop
    google-chrome
    kbs2
    vscode-fhs
    duplicacy
    openssl
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
}
