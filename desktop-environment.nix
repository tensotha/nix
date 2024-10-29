{ inputs, config, pkgs, ... }:

{
xdg.portal.enable = true;
xdg.portal.extraPortals = [pkgs.xdg-desktop-portal-gtk];
programs.hyprland.enable = true; # enable Hyprland
xdg.configFile.hyprland = {
    source = ./config/hypr;
    recursive = true;
};



programs.waybar.enable = true;
xdg.configFile.waybar = {
    source = ./config/waybar;
    recursive = true;
};


environment.sessionVariables.NIXOS_OZONE_WL = "1";
services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
  };
}
