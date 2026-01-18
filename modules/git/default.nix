{ pkgs, ... }:

{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "markvu2607";
        email = "markvu2607@miava.io.vn";
      };
      init = {
        defaultBranch = "main";
      };
    };
  };
}
