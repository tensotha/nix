# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).


{ config, pkgs,  ... }:
 

{
fonts.packages = with pkgs; [
      jetbrains-mono
      fira-code
      fira-code-symbols
      (nerdfonts.override { fonts = [ "FiraCode" ]; })

];
  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.config.allowUnfree = true;
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./desktop-environment.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.timeout = 30;

  networking.hostName = "tensotha-nixos"; # Define your hostname.
  # Pick only one of the below networking options.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  #
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  # Set your time zone.
  #
  time.timeZone = "Europe/Amsterdam";


  # Enable the X11 windowing system.
  nix.gc = {
    automatic = true;
    dates = "daily";
    options = "--delete-older-than 1d";
  };

  services.udisks2.enable = true;
    services.syncthing = {
  enable = true;
  openDefaultPorts = true;
  settings.gui = {
    user = "admin";
    password = "admin";
  };
};
  services.flatpak.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --time-format '%a, %d %b %Y • %T' --greeting  '[Become \n          Visible]' --asterisks --remember --cmd Hyprland";
        user = "greeter";
      };
    };
  };
 
#services.greetd = {
#    enable = true;
#    settings = {
#    default_session = {
#      command = "${lib.getExe config.programs.hyprland.package}";
#      user = "tensotha";
#    };
#    initial_session = {
#      command = "${lib.getExe config.programs.hyprland.package} --config /path/to/greetd/hyprland.conf";
#      user = "greeter";
#    };
#  };
#   };

  users.users.tensotha = {
  isNormalUser = true;
  extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
   };


hardware = {
    graphics.enable = true;
    nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;
    nvidia.modesetting.enable = true;
};

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  # system.copySystemConfiguration = true;

  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  #
  # Most users should NEVER change this value after the initial install, for any reason,
  # even if you've upgraded your system to a new NixOS release.
  #
  # This value does NOT affect the Nixpkgs version your packages and OS are pulled from,
  # so changing it will NOT upgrade your system - see https://nixos.org/manual/nixos/stable/#sec-upgrading for how
  # to actually do that.
  #
  # This value being lower than the current NixOS release does NOT mean your system is
  # out of date, out of support, or vulnerable.
  #
  # Do NOT change this value unless you have manually inspected all the changes it would make to your configuration,
  # and migrated your data accordingly.
  #
  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "24.05"; # Did you read the comment?
  programs.hyprland.enable = true;
  environment.systemPackages = [
    pkgs.bluetuith
    pkgs.python3
    pkgs.gcc
    pkgs.caprine
    pkgs.anki-bin
    pkgs.stremio
    ];
}

