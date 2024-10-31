{ config, pkgs, inputs, ... }:
{
  imports = [
    ../../home-manager/common/nvim/nvim.nix
    ../../home-manager/common/tmux/tmux.nix
    ../../home-manager/common/random-packages.nix
    ../../home-manager/linux/hypr/hyprland.nix 
];

  home = {
    username = "tensotha";
    homeDirectory = "/home/tensotha";
};


  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "24.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
