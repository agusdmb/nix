{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    azure-cli
    kind
    kubectl
    kubectx
    kubelogin
  ];

  xdg.enable = true;

  programs.k9s = {
    enable = true;
    catppuccin.enable = true;
  };

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
    shellAliases = {
      kdev = "k9s --context nbllabaks -n nebuly-dev";
      kprod = "k9s --context nblprdaks -n nebuly-prod";
      kalex = "k9s --context arn:aws:eks:eu-north-1:637423343975:cluster/nblplatformeks -n nebuly";
    };
  };
}
