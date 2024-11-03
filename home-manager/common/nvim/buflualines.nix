{
  programs.nixvim = {
    plugins.bufferline = {
      enable = true;
    };
    plugins.lualine.enable = true;
  };
}
