{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    gptfdisk
    parted
    fuse
    ntfs3g
    lsof
  ];
}
