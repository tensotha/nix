{inputs, ...}:
{
  imports = [
        inputs.nixvim.homeManagerModules.nixvim
    # config for nvim
    ./vim-tmux-navigator.nix
    ./conform.nix
    ./buflualines.nix
    ./cmp.nix
    ./debug.nix
    ./cmdline.nix
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
     vimAlias = true;
     vimdiffAlias = true;
     defaultEditor = true;
    # You can easily change to a different colorscheme.
    # Add your colorscheme here and enab le it.
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
    globalOpts = {
	shiftwidth = 2;
	tabstop = 2;
	softtabstop = 2;
	expandtab = true;
	wrap = false;
	termguicolors = true;
	number = true;
  ignorecase = true;
  smartcase = true;
  cursorline = true;
  background = "dark";
  signcolumn = "yes";
  backspace = "indent,eol,start";
  #clipboard = append=(unnamedplus);
  splitright = true;
  splitbelow = true;
	relativenumber = true;
	};
  keymaps = [
        {
      mode = "n";
      key = "<leader>sh";
      action = "<C-W>s";
      options = {
        desc = "Split Window Horizontally";
        remap = true;
        };
      }
      {
          mode = "n";
          key = "<leader>sv";
          action = "<C-W>v";
          options = {
            desc = "Split Window Vertically";
            remap = true;
          };
      }
      {
          mode = "n";
          key = "<leader>se";
          action = "<C-W>=";
          options = {
            desc = "make windows equal size";
            remap = true;
        };
      }
      {
          mode = "n";
          key = "<leader>sx";
          action = "<cmd>close<CR>";
          options = {
            desc = "close current split";
            remap = true;
        };
      }
       {
          mode = "n";
          key = "<leader>to";
          action = "<cmd>tabnew<CR>";
          options = {
            desc = "Open New Tab";
            remap = true;
        };
      }
       {
          mode = "n";
          key = "<leader>tx";
          action = "<cmd>tabclose<CR>";
          options = {
            desc = "Close Tab";
            remap = true;
        };
      }
{
          mode = "n";
          key = "<leader>tn";
          action = "<cmd>tabn<CR>";
          options = {
            desc = "Go to Next Tab";
            remap = true;
        };
      }
 {
          mode = "n";
          key = "<leader>tp";
          action = "<cmd>tabp<CR>";
          options = {
            desc = "Go to Previous Tab";
            remap = true;
        };
      }
      {
        mode= "i";
        key = "jk";
        action = "<ESC>";
        options = {
            desc = "Exit insert mode";
            remap = true;
          };
      }
{
      mode = ["i" "x" "n" "s"];
      key = "<leader>w";
      action = "<cmd>w<cr><esc>";
      options = {desc = "Save File";};
    }
          {
      mode = ["i" "x" "n" "s"];
      key = "<leader>wa";
      action = "<cmd>wa<cr><esc>";
      options = {desc = "Save All Files";};
    }
    ];
    # https://nix-community.github.io/nixvim/NeovimOptions/index.html?highlight=globals#globals
    globals = {
      # Set <space> as the leader key
      # See `:help mapleader`
      mapleader = " ";
      maplocalleader = " ";
      # Set to true if you have a Nerd Font installed and selected in the terminal
			# have_nerd_font = true;
    };
  };
}
