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
    tailscale
    liquidctl # For controlling AIO
  ];

  programs = {
    _1password = {
      enable = true;
    };

    _1password-gui = {
      enable = true;
      polkitPolicyOwners = ["kieran"];
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
