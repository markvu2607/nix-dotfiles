{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.infisical
  ];

  home.sessionVariables = {
    INFISICAL_API_URL = "https://infisical.miava.io.vn";
  };
}
