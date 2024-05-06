{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    htop
    wget
    tree
    pv
  ];

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
  };

}
