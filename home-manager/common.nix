{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    lazygit
    lazydocker
    gh
    kubectl
    k9s
    kind
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
    pv
    gnumake
    xclip
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

  catppuccin.flavour = "mocha";

  programs.starship = {
    enable = true;
    catppuccin.enable = true;
  };

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

  programs.alacritty = {
    enable = false;
    settings = {
      font = {
        size = 16;
        normal = {
          family = "Hack Nerd Font Mono";
        };
      };
      selection = {
        save_to_clipboard = true;
      };
      window = {
        decorations = "none";
        opacity = 0.8;
      };
    };
  };

  programs.kitty = {
    enable = true;
    theme = "Catppuccin-Mocha";
    settings = {
      font_family = "Hack Nerd Font Mono";
      font_size = 16;
    };
  };

}
