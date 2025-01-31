{pkgs, lib, ...}: {
programs.bash = {
		enable = true;
		enableCompletion = true;
		bashrcExtra = ''
if [ "$(tty)" = "/dev/tty1" ];then
  Hyprland
fi
if command -v tmux>/dev/null; then
 [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && tmux
fi
if command -v fzf-share >/dev/null; then
  source "$(fzf-share)/key-bindings.bash"
  source "$(fzf-share)/completion.bash"
fi
export PATH="/home/tensotha/.local/bin:$PATH"

		'';
	          shellAliases = {
          	ne = "nix-env";
          	nei = "nix-env -iA";
          	no = "nixops";
          	ns = "nix-shell --pure";
		k = "kubectl";
		nors = "sudo nixos-rebuild switch";
         	please = "sudo";
		g = "git";
          };
	};
  programs.git = {
    enable = true;
    userName  = "abdulhakim alsharif";
    userEmail = "abdulhakim.alsharif@hotmail.com";
  };
  programs.kitty = lib.mkForce {
    enable = true;
    settings = {
    confirm_os_window_close = 0;
    background_opacity = 0.6;
    background_blur = 5;
        };
    	};
programs.direnv = {
		enable = true;
		enableBashIntegration = true;
		enableZshIntegration = true;
		nix-direnv.enable = true;
	};
programs.starship = {
		enable = true;
	};
programs.yazi = {
		enable = true;
		enableBashIntegration = true;

	}; 
  programs.k9s = {
		enable = true;
	};
 home.packages = with pkgs; [
    # here is some command line tools I use frequently
    # feel free to add your own or remove some of them
    showmethekey
    bat
    fzf
    xh
    uv
    podman-tui
    firefox
    ticktick
    obsidian
    neofetch
    killall
    vesktop
    # archives
    dolphin
    zip
    udiskie
    xz
    unzip
    p7zip
    # utils
    xdg-utils
    ripgrep # recursively searches directories for a regex pattern
    jq # A lightweight and flexible command-line JSON processor
    yq-go # yaml processor https://github.com/mikefarah/yq
    eza # A modern replacement for ‘ls’
    # networking tools
    mtr # A network diagnostic tool
    iperf3
    dnsutils  # `dig` + `nslookup`
    ldns # replacement of `dig`, it provide the command `drill`
    aria2 # A lightweight multi-protocol & multi-source command-line download utility
    socat # replacement of openbsd-netcat
    nmap # A utility for network discovery and security auditing
    ipcalc  # it is a calculator for the IPv4/v6 addresses
    
    lazygit
    ripgrep
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
    pywal
    # nix related
    #
    # it provides the command `nom` works just like `nix`
    # with more details log output
    nix-output-monitor


    font-manager

    # productivity
    hugo # static site generator
    glow # markdown previewer in terminal

    btop  # replacement of htop/nmon
    iftop # network monitoring

    # system call monitoring
    lsof # list open files
  ];
}
