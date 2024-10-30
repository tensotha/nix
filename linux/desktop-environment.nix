{ inputs, config, pkgs, ... }:

{
xdg.portal.enable = true;
xdg.portal.extraPortals = [pkgs.xdg-desktop-portal-gtk];
programs.hyprland.enable = true; # enable Hyprland

programs.waybar.enable = true;
programs.hyprlock.enable = true;
environment.sessionVariables.NIXOS_OZONE_WL = "1";
services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
  };
}
