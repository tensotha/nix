{ config, pkgs, ... }:

{
  users.users.tensotha = {
  name = "tensotha";
  home = "/Users/tensotha";
};

  programs.nixvim = {
     enable = true;
     colorschemes.gruvbox.enable = true;
     plugins.lightline.enable = true;
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