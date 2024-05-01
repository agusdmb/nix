{ config, pkgs, lib, ... }:

{
  imports = [
    ../common.nix
    ../neovim.nix
    ../ranger.nix
  ];

  home.username = "agusdmb";
  home.homeDirectory = "/home/agusdmb";
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    wf-recorder
    vlc
    brave
    rawtherapee
  ];
}
