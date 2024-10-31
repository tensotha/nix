{ config, pkgs, inputs, ... }:
{
  imports = [
    ../../home-manager/common/nvim/nvim.nix
    # ../../home-manager/common/tmux/tmux.nix
  ];

  home = {
    username = "tensotha";
    homeDirectory = "/home/tensotha";
};
programs.tmux = {
  enable = true;
  plugins = with pkgs; [
     tmuxPlugins.catppuccin
     tmuxPlugins.sensible
     tmuxPlugins.vim-tmux-navigator
     tmuxPlugins.resurrect
     tmuxPlugins.continuum
     tmuxPlugins.yank
  ];
  extraConfig = ''
    set -g default-terminal "screen-256color"
    set -g prefix C-a
    unbind C-b
    bind-key C-a send-prefix

    unbind %
    bind | split-window -h

    unbind '"'
    bind - split-window -v 

    unbind r 

    bind -r j resize-pane -D 5
    bind -r k resize-pane -U 5
    bind -r l resize-pane -R 5
    bind -r h resize-pane -L 5

    bind -r m resize-pane -Z

    # Start windows and panes at 1, not 0
    set -g base-index 1
    set -g pane-base-index 1
    set-window-option -g pane-base-index 1
    set-option -g renumber-windows on

    set -g mouse on

    set-window-option -g mode-keys vi

    bind-key -T copy-mode-vi 'v' send -X begin-selection # start selecting text with "v"
    bind-key -T copy-mode-vi 'y' send -X copy-selection # copy text with "y"
    # copy easier
    bind-key -T copy-mode-vi v send-keys -X begin-selection
    bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
    bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel

    unbind -T copy-mode-vi MouseDragEnd1Pane # don't exit copy mode when dragging with mouse

    # remove delay for exiting insert mode with ESC in Neovim
    set -sg escape-time 11

    set -g @resurrect-capture-pane-contents 'on'
    set -g @continuum-restore 'on'

    # Other examples:
    # set -g @plugin 'github_username/plugin_name'
    # set -g @plugin 'github_username/plugin_name#branch'
    # set -g @plugin 'git@github.com:user/plugin'
    # set -g @plugin 'git@bitbucket.com:user/plugin'
    set -g @plugin 'catppuccin/tmux'
    set -g status-position top



  '';
};

xdg.configFile.waybar = {
    source = ../../home-manager/common/waybar;
    recursive = true;
};

xdg.configFile.hypr = {
    source = ../../home-manager/common/hypr;
    recursive = true;
};
  programs.bash.enable = true;


 home.packages = with pkgs; [
    # here is some command line tools I use frequently
    # feel free to add your own or remove some of them
    vscodium
    hyprcursor
    neofetch
    firefox
    kitty
    git
    vesktop
    # archives
    zip
    xz
    unzip
    p7zip

    # utils
    ripgrep # recursively searches directories for a regex pattern
    jq # A lightweight and flexible command-line JSON processor
    yq-go # yaml processor https://github.com/mikefarah/yq
    eza # A modern replacement for ‘ls’
    fzf # A command-line fuzzy finder

    # networking tools
    mtr # A network diagnostic tool
    iperf3
    dnsutils  # `dig` + `nslookup`
    ldns # replacement of `dig`, it provide the command `drill`
    aria2 # A lightweight multi-protocol & multi-source command-line download utility
    socat # replacement of openbsd-netcat
    nmap # A utility for network discovery and security auditing
    ipcalc  # it is a calculator for the IPv4/v6 addresses

    # misc
    cowsay
    file
    which
    tree
    gnused
    gnutar
    gawk
    zstd
    gnupg

    # nix related
    #
    # it provides the command `nom` works just like `nix`
    # with more details log output
    nix-output-monitor

    # productivity
    hugo # static site generator
    glow # markdown previewer in terminal

    btop  # replacement of htop/nmon
    iotop # io monitoring
    iftop # network monitoring

    # system call monitoring
    strace # system call monitoring
    ltrace # library call monitoring
    lsof # list open files

    # system tools
    sysstat
    lm_sensors # for `sensors` command
    ethtool
    pciutils # lspci
    usbutils # lsusb
  ];


  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "24.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}