{ config, pkgs, lib, ... }:

let
  commonConfig = import ../common.nix { inherit pkgs; };
in
lib.recursiveUpdate commonConfig {
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
