{ config, pkgs, lib, ... }:

{
  imports = [
    ./base.nix
    ./ranger.nix
    ./develop/main.nix
    ./google.nix
  ];

  catppuccin.flavor = "mocha";

  home.packages = with pkgs; [
    taskwarrior
    vit
  ];
}
