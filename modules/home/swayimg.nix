{
  pkgs,
  lib,
  config,
  ...
}: {
  home.packages = with pkgs; [swayimg];
  settings = {
    font = {
      # Uncomment and set these when needed
      # name = "FontName";
      # size = fonts.sizes.applications;
      # color = colors.base05;
      # shadow = colors.base01;
    };

    viewer = {
      # Uncomment and set these when performance improves or desired
      # antialiasing = true;
      # fixed = false;
      # transparency = true; # Example value
      # window = "fullscreen"; # Example value
    };

    "info.viewer".top_left = "name, imagesize, filesize";

    "keys.viewer" = {
      "0" = "first_file";
      "dollar" = "last_file";
      "Ctrl+h" = "prev_file";
      "Ctrl+l" = "next_file";
      f = "fullscreen";
      h = "step_left";
      j = "step_down";
      k = "step_up";
      l = "step_right";
      r = "rotate_right";
      "Shift+r" = "rotate_left";
      "Ctrl+r" = "reload";
      i = "info";
      "plus" = "zoom +10";
      "underscore" = "zoom +10"; # Same as "plus" for redundancy
      n = "zoom optimal";

      # Uncomment these lines if trash or delete functionality is needed
      # d = "exec gtrash put '%'; status 'Trashed %'";
      # "Shift+d" = "exec rm '%'; status 'Deleted %'";
      # Delete = "exec rm '%'; status 'Deleted %'";

      y = "exec wl-copy < '%'; status 'Copied image'";
      "Shift+y" = "exec wl-copy '%'; status 'Copied image path'";

      ScrollUp = "zoom +5";
      ScrollDown = "zoom -5";
    };
  };

  xdg.configFile."swayimg/config".text = lib.generators.toINI {} settings;
}
