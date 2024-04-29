{ pkgs, ... }:

{
  home.packages = with pkgs; [
    alacritty
    lazygit
    lazydocker
    gh
    kubectl
    k9s
    kind
    ranger
    tig
    htop
    fzf
    nodejs_20
    jq
    wget
    python311Full
    ripgrep
    azure-cli
    tree
    bat
  ];

  programs.git = {
    enable = true;
    userName = "Agustin Marquez";
    userEmail = "agusdmb@gmail.com";
  };

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
    shellAliases = {
      vim = "nvim";
      vi = "nvim";
      kdev = "k9s --context nbllabaks -n nebuly-dev";
      kprod = "k9s --context nblprdaks -n nebuly-prod";
    };
  };

  programs.starship.enable = true;
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  programs.btop = {
    enable = true;
    settings = {
      vim_keys = true;
      theme_background = false;
    };
  };
}
