{ config, ... }:

{
  home.sessionVariables = {
    # Locale
    LANG = "en_US.UTF-8";

    # Java & Android
    JAVA_HOME = "/Applications/Android Studio.app/Contents/jbr/Contents/Home";
    ANDROID_HOME = "${config.home.homeDirectory}/Library/Android/sdk";
  };

  home.sessionPath = [
    # Antigravity
    "${config.home.homeDirectory}/.antigravity/antigravity/bin"
  ];

  # Init scripts for shell
  programs.zsh.initContent = ''
    # Set NDK_HOME dynamically
    if [ -d "$ANDROID_HOME/ndk" ]; then
      export NDK_HOME="$ANDROID_HOME/ndk/$(ls -1 "$ANDROID_HOME/ndk" | tail -n 1)"
    fi
  '';
}
