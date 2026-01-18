{ pkgs, ... }:

{
  home.packages = [
    pkgs.zellij
  ];

  home.shellAliases = {
    zj = "zellij";
  };

  xdg.configFile."zellij/config.kdl".source = ./config.kdl;
}
