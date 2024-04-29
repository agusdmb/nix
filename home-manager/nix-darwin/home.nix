{ config, pkgs, lib, ... }:

let
  commonConfig = import ../common.nix { inherit pkgs; };
in
lib.recursiveUpdate commonConfig {
  home.username = "agustinmarquez";
  home.homeDirectory = "/Users/agustinmarquez";
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    unixtools.watch
    tree
  ];
}
