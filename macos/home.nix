{ config, pkgs, ... }:
{
  imports = [
    # NOTE: The first thing you will want to do is uncommented on of the three imports below
    # depending on which module you chose to use to install Nixvim.
    #
    # Uncomment if you are using the home-manager module
    #inputs.nixvim.homeManagerModules.nixvim
    # Uncomment if you are using the nixos module
    #inputs.nixvim.nixosModules.nixvim
    # Uncomment if you are using the nix-darwin module
    #inputs.nixvim.nixDarwinModules.nixvim

    # config
    ./config/nvim/conform.nix
    ./config/nvim/cmp.nix
    ./config/nvim/debug.nix
    ./config/nvim/telescope.nix
    ./config/nvim/treesitter.nix
    ./config/nvim/neotree.nix
    ./config/nvim/autopairs.nix
    ./config/nvim/gitsigns.nix
    ./config/nvim/lsp.nix
    ./config/nvim/lint.nix
    ./config/nvim/which-key.nix
    ];

  users.users.tensotha = {
  name = "tensotha";
  home = "/Users/tensotha";
};

  programs.nixvim = {
     enable = true;

    # You can easily change to a different colorscheme.
    # Add your colorscheme here and enable it.
    # Don't forget to disable the colorschemes you arent using
    #
    # If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    colorschemes = {
      # https://nix-community.github.io/nixvim/colorschemes/tokyonight/index.html
      tokyonight = {
        enable = true;
        settings = {
          # Like many other themes, this one has different styles, and you could load
          # any other, such as 'storm', 'moon', or 'day'.
          style = "night";
        };
      };
    };

    # https://nix-community.github.io/nixvim/NeovimOptions/index.html?highlight=globals#globals
    globals = {
      # Set <space> as the leader key
      # See `:help mapleader`
      mapleader = " ";
      maplocalleader = " ";

      # Set to true if you have a Nerd Font installed and selected in the terminal
      have_nerd_font = true;
    };

  };

home-manager.users.tensotha = { pkgs, ... }: {
  home.packages = [];
  programs.bash.enable = true;

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "24.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
};
}