{ config, pkgs, lib, ... }:

{
  imports = [
    ../modules/main.nix
    ../modules/linux-tools.nix
  ];

  home.username = "agusdmb";
  home.homeDirectory = "/home/agusdmb";
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    wf-recorder
    vlc
    brave
    firefox
    rawtherapee
    bitwarden-cli
  ];
}
