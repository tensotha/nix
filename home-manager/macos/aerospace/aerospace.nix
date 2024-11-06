# Sadly there's no aerospace package support in nix yet!!
## So this is just for config management

{ ... }: {
  xdg.configFile.hypr = {
    source = ./aerospace;
    recursive = true;
};
}
