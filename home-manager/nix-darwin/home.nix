{ config, pkgs, lib, ... }:

{
  imports = [
    ../modules/main.nix
  ];

  home.username = "agustinmarquez";
  home.homeDirectory = "/Users/agustinmarquez";
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    unixtools.watch
  ];
}
