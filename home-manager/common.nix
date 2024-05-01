{ config, pkgs, lib, ... }:

{
  catppuccin.flavour = "mocha";

  home.packages = with pkgs; [
    lazydocker
    gh
    kubectl
    kind
    tig
    htop
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

  xdg.enable = true;

  programs.k9s = {
    enable = true;
    catppuccin = {
      enable = true;
    };
  };


  programs.lazygit = {
    enable = true;
    catppuccin = {
      enable = true;
    };
  };

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
    };
    catppuccin.enable = true;
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
    # theme = "Catppuccin-Mocha";
    settings = {
      font_family = "Hack Nerd Font Mono";
      font_size = 16;
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
