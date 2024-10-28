{ inputs, config, pkgs, ... }:

{
programs.hyprland.enable = true; # enable Hyprland
environment.sessionVariables.NIXOS_OZONE_WL = "1";
services.xserver = {
  enable = true;
  windowManager.awesome = {
    enable = true;
    luaModules = with pkgs.luaPackages; [
        luarocks # is the package manager for Lua modules
        luadbi-mysql # Database abstraction layer
    ];
  };
  displayManager.gdm.enable = true;
  desktopManager.gnome.enable = true;
};
environment.gnome.excludePackages = (with pkgs; [
  gnome-tour
  geary
  epiphany
  atomix
  hitori
  tali
  iagno
  evince
  gedit
]);
}
