{ config, pkgs, lib, ... }:

{
  imports = [
    ./base.nix
    ./ranger.nix
    ./develop/main.nix
  ];

  catppuccin.flavour = "mocha";
}
