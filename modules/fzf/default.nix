{ pkgs, ... }:

{
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;

    defaultCommand = "fd --type f --hidden --follow --exclude .git";
    defaultOptions = [
      "--height 40%"
      "--layout reverse"
      "--border"
      "--inline-info"
      "--cycle"
    ];

    fileWidgetCommand = "fd --type f";
    fileWidgetOptions = [ "--preview 'bat --color=always --style=numbers --line-range=:500 {}'" ];

    changeDirWidgetCommand = "fd --type d";
    changeDirWidgetOptions = [ "--preview 'tree -C {} | head -200'" ];
  };

  home.packages = with pkgs; [
    fd
    tree
  ];
}
