{ pkgs, ...}: {
programs.hyprland.enable = true; # enable Hyprland

programs.waybar.enable = true;
programs.hyprlock.enable = true;
xdg.configFile.waybar = {
    source = ./waybar;
    recursive = true;
};

xdg.configFile.hypr = {
    source = ./hyprland.conf;
};
}
