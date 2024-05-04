{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    htop
    wget
    tree
    pv
    gptfdisk
    parted
    fuse
    ntfs3g
    lsof
  ];

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
  };

}
