{ pkgs, ... }:

{
  home.packages = with pkgs; [
    python311Full
    bat
    poppler_utils
    lf
  ];

  programs.ranger = {
    enable = true;
    settings = {
      preview_images = true;
      preview_images_method = "kitty";
    };
  };
}
