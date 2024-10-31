{ config, pkgs, inputs, ... }:
{
  imports = [
    ../../home-manager/common/nvim/nvim.nix
    ../../home-manager/common/tmux/tmux.nix
    ../../home-manager/common/random-packages.nix
  ];

  home = {
    username = "tensotha";
    homeDirectory = "/home/tensotha";
};

xdg.configFile.waybar = {
    source = ../../home-manager/common/waybar;
    recursive = true;
};

xdg.configFile.hypr = {
    source = ../../home-manager/common/hypr;
    recursive = true;
};


  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "24.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
