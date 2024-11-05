{inputs, pkgs, ...}: {
  
 home.packages = with pkgs; [
    dunst
    rofi-wayland
    pywal
    waypaper
    inputs.swww.packages.${pkgs.system}.swww
];
wayland.windowManager.hyprland = { 
	enable = true; # enable Hyprland
            plugins = [
      # ...
    ];
};

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
xdg.configFile.wallpaperchanger = {
    source = ./hypr/wallpaper-changer.sh;
    executable = true;
};
xdg.configFile.wallpapers = {
    source = ./wallpapers;
    recursive = true;
};

}
