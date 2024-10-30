{ config, lib, pkgs, ... }:

{
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
}