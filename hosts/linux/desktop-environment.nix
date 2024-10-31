{ inputs, config, pkgs, ... }:

{
xdg.portal.enable = true;
xdg.portal.extraPortals = [pkgs.xdg-desktop-portal-gtk];

services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
  };
}
