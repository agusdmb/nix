{ config, pkgs, lib, ... }:

{
  imports = [
    ./neovim.nix
    ./kubernetes.nix
  ];

  home.packages = with pkgs; [
    gh
    lazydocker
    tig
    awscli2
  ];

  programs.git = {
    enable = true;
    userName = "Agustin Marquez";
    userEmail = "agusdmb@gmail.com";
    ignores = [
      ".venv"
    ];
    extraConfig = {
      merge.ff = false;
    };
  };

  programs.starship = {
    enable = true;
    catppuccin.enable = true;
  };

  programs.btop = {
    enable = true;
    settings = {
      vim_keys = true;
    };
    catppuccin.enable = true;
  };

  programs.kitty = {
    enable = true;
    # theme = "Catppuccin-Mocha";
    settings = {
      font_family = "Hack Nerd Font Mono";
      font_size = 14;
    };
    catppuccin.enable = true;
  };

  programs.gh-dash = {
    enable = true;
    catppuccin.enable = true;
  };

  programs.fzf = {
    enable = true;
    catppuccin.enable = true;
  };

}
