# Sadly there's no aerospace package support in nix yet!!
## So this is just for config management

{ ... }: {
  xdg.configFile.aerospace = {
    source = ./aerospace;
    recursive = true;
};
}
