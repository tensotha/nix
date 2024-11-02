{pkgs, ...}: {
programs.bash = {
		enable = true;
		enableCompletion = true;
		bashrcExtra = ''
if command -v tmux>/dev/null; then
 [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && tmux
fi

if [ "$(tty)" = "/dev/tty1" ];then
  Hyprland
fi
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
	#  programs.kitty = {
	#	enable = true;
	#        themeFile = "tokyo_night_moon";
	#};
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
    bat
    fzf
    vscodium
    neofetch
    kitty
    vesktop
    # archives
    stremio
    zip
    xz
    unzip
    p7zip
    copyq
    # utils
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
    iftop # network monitoring

    # system call monitoring
    lsof # list open files
  ];
}
