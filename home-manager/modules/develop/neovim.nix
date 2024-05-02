{ pkgs, ... }:

{
  home.packages = with pkgs; [
    fzf
    gnumake
    jq
    lazygit
    nodejs_20
    python311Full
    ripgrep
    wget
    xclip
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  programs.lazygit = {
    enable = true;
    catppuccin.enable = true;
  };

}
