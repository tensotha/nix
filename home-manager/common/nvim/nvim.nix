{ config, lib, pkgs, ... }:

{
      imports = [
    # config for nvim
    ./conform.nix
    ./cmp.nix
    ./debug.nix
    ./telescope.nix
    ./treesitter.nix
    ./neotree.nix
    ./autopairs.nix
    ./gitsigns.nix
    ./lsp.nix
    ./lint.nix
    ./which-key.nix
    ];
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
}