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

        user.signingkey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDGlKvcXI3pnPIHAGeDN5N/JVwZ4trcbSKSKbNPzim4lIA3pCmDXda5BNURKjGxudzDycdXn4tXPc4djp5bKgN/Ive5j9r/gDmTBHEGJKG9pBen0i/0nT9kLXxFOOdHHa+VCsJLRE+QMmKMQ4nZaIONUaCgPGKRImRozqlmtbO94d13srcbwmF4ZCq41dYEngMKGI+lBG18FCDLQw8MvIUffNSdyZ4nbOwkCkiTj7TYdf+8DXtxtGO8iJCTFu4+ywyrn01uioKL/vqXIz/MLMinbSMMzljEQyDWOdJtJfFzSVGEqX3bGG8qXfrpP2IYgf/OePq7Jd0ZFbRx9EeBO9DYlwQuUesyR9Y1jh8VnE85fCdjiuXLSxUZ8D6wGdE8e+IK6UpB87bGtkZVQ3Iq2ojv8dU+syXJhDi2lpovmGfpGcWheThOpQ/taxRJa0tuXqSLdWez+iIpJhgHY/mRiXFzTwSzr/aeOEywhejRJSCFWVdeQDMwDMxX5/gPOjwoSYaiZ/b28qVxhhOENDQrEB56k2c+lfwJH9wr2ktwhMxJ4cbbOUbfSww1m+slL1BvIPcSwE8owmeSAvrVX/57UgiaAMRnmDUzcvt/5yH/GvcWibbQJgsnH48Go2TCuUYLLqSpHmtJjv5bWW27L9InUx8scsutOcN6dm0nLZxqLiqwUw==";

        commit.gpgsign = true;
        gpg.format = "ssh";
        gpg.ssh.program = "/run/current-system/sw/bin/op-ssh-sign";
      };
    };
  };
}