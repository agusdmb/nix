{ config, pkgs, lib, ... }:

{
  imports = [
    ../modules/base.nix
  ];

  home.username = "agusdmb";
  home.homeDirectory = "/home/agusdmb";
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
  ];
}
