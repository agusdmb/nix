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

}
