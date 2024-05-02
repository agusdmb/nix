{ pkgs, ... }:

{
  home.packages = with pkgs; [
    python311Full
    jq
    poppler_utils
    lf
  ];

  programs.bat = {
    enable = true;
    catppuccin.enable = true;
  };

  programs.ranger = {
    enable = true;
    settings = {
      preview_images = true;
      preview_images_method = "kitty";
    };
  };
}
