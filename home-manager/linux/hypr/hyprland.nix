{ pkgs, ...}: {
  wayland.windowManager.hyprland.enable = true; # enable Hyprland
programs.waybar.enable = true;
programs.hyprlock.enable = true;
xdg.configFile.waybar = {
# environment.sessionVariables.NIXOS_OZONE_WL = "1";
   source = ./waybar;
    recursive = true;
};

xdg.configFile.hypr = {
    source = ./hypr;
    recursive = true;
};
}
