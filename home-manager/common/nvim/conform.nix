{ pkgs, ...}:
{
  programs.nixvim = {
    # Dependencies
    #
    # https://nix-community.github.io/nixvim/NeovimOptions/index.html?highlight=extraplugins#extrapackages
    extraPackages = with pkgs; [
      # Used to format Lua code
      stylua
      isort
      black
      prettierd
      nixpkgs-fmt
    ];




    ## set ansible.yaml files
    extraPlugins = [
      # Set ansible.yaml files
      (pkgs.vimUtils.buildVimPlugin {
        name = "nvim-ansible";
        src = pkgs.fetchFromGitHub {
          owner = "mfussenegger";
          repo = "nvim-ansible";
          rev = "9c3b4a771b8c8d7b4f2171466464d978cb3846f7";
          hash = "sha256-N1yOL77WpP66A2zrKxi7IOO5uRzAaeGa0Y/yWaIFiws=";
        };
      })
    ];
    # Autoformat
    # https://nix-community.github.io/nixvim/plugins/conform-nvim.html
    plugins.conform-nvim = {
      enable = true;
      settings = {
        notify_on_error = false;
        format_on_save = ''
          function(bufnr)
            -- Disable "format_on_save lsp_fallback" for lanuages that don't
            -- have a well standardized coding style. You can add additional
            -- lanuages here or re-enable it for the disabled ones.
            local disable_filetypes = { c = true, cpp = true }
            return {
              timeout_ms = 500,
              lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype]
            }
          end
        '';
        formatters_by_ft = {
          lua = ["stylua"];
          # Conform can also run multiple formatters sequentially
          python = [ "isort"  "black" ];
          #
          terraform  =  ["tofu_fmt"];
          tf  =  ["tofu_fmt"];
           css = ["prettier"];
            html = ["prettier"];
            json = ["prettier"];
            just = ["just"];
            markdown = ["prettier"];
            nix = ["alejandra"];
                      yaml = ["yamlfmt"];
          # You can use a sublist to tell conform to run *until* a formatter
          # is found
          javascript = [ "prettierd" "prettier" ];
          javascriptreact  =  ["prettierd" "prettier"];
          go  =  ["golines"];
        };
      }; 
    };

    # https://nix-community.github.io/nixvim/keymaps/index.html
    keymaps = [
      {
        mode = "";
        key = "<leader>f";
        action.__raw = ''
          function()
            require('conform').format { async = true, lsp_fallback = true }
          end
        '';
        options = {
          desc = "[F]ormat buffer";
        };
      }
    ];
  };
}
