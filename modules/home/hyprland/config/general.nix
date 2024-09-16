{
  wayland.windowManager.hyprland.settings = {
    general = {
      "$mainMod" = "SUPER";
      layout = "master";
      gaps_in = 7;
      gaps_out = 14;
      border_size = 2;
      "col.active_border" = "rgb(ebdbb2)";
      "col.inactive_border" = "rgb(1d2021)";
      resize_on_border = true;
      border_part_of_window = false;
      no_border_on_floating = false;
    };

    misc = {
      force_default_wallpaper = 0;
      disable_hyprland_logo = true;
      focus_on_activate = false;
      new_window_takes_over_fullscreen = 1;
      #initial_workspace_tracking = 0;
      #enable_swallow = true;
      #swallow_regex = foot;
    };
  };
}
