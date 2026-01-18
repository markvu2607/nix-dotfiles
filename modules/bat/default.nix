{ pkgs, lib, config, ... }:

{
  programs.bat = {
    enable = true;

    config = {
      style = "plain";
    };
  };

  home.shellAliases = lib.mkIf config.programs.bat.enable {
    cat = "bat";
  };
}
