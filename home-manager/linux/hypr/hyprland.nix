{ pkgs, ...}: {
programs.hyprland.enable = true; # enable Hyprland

programs.waybar.enable = true;
programs.hyprlock.enable = true;
environment.sessionVariables.NIXOS_OZONE_WL = "1";
xdg.configFile.waybar = {
    source = ./waybar;
    recursive = true;
};

xdg.configFile.hypr = {
    source = ./hyprland.conf;
};
}
