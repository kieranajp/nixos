{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    git
    curl
    wget
    htop
    google-chrome
    feh
    kbs2
    vscode-fhs
    duplicacy
    openssl
    tailscale
    liquidctl # For controlling AIO
    jetbrains.jdk
    jetbrains.goland
    jetbrains.phpstorm
  ];

  programs = {
    _1password = {
      enable = true;
    };

    _1password-gui = {
      enable = true;
      polkitPolicyOwners = ["kieran"];
    };

    fish = {
      enable = true;
    };

    mosh = {
      enable = true;
    };

    thunar = {
      enable = true;
    };
  };

  services.tailscale.enable = true;
}
