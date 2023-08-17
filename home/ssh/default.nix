{ pkgs, ... }:

{
  programs.ssh.enable = true;
  
  home.file.".ssh/config".source = ./config;
  # programs.ssh.matchBlocks = {
  #   "*" = {
  #     identityAgent = "~/.1password/agent.sock";
  #   };
  # };

}