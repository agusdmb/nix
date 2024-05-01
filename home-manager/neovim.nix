{ pkgs, ... }:

{
  home.packages = with pkgs; [
    lazygit
    fzf
    nodejs_20
    jq
    wget
    python311Full
    ripgrep
    gnumake
    xclip
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

}
