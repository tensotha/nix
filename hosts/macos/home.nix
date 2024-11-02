{ config, pkgs, ... }:
{


  users.users.tensotha = {
  name = "tensotha";
  home = "/Users/tensotha";
};

home-manager.users.tensotha = { pkgs, ... }: {
    imports = [
    # NOTE: The first thing you will want to do is uncommented on of the three imports below
    # depending on which module you chose to use to install Nixvim.
    #
    # Uncomment if you are using the home-manager module
    # Uncomment if you are using the nixos module
    #inputs.nixvim.nixosModules.nixvim
    # Uncomment if you are using the nix-darwin module
    #inputs.nixvim.nixDarwinModules.nixvim
    ../../home-manager/common/random-packages.nix
    ../../home-manager/common/nvim/nvim.nix
    ../../home-manager/common/tmux/tmux.nix
    

    ];
  home.packages = [];

  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "24.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
};
}
