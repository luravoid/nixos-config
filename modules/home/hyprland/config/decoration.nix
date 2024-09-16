{
  wayland.windowManager.hyprland.settings = {
    decoration = {
      rounding = 0;
      blur = {
        enabled = true;
        size = 10;
        passes = 6;
        noise = 0.3;

        # old

        # size = 2;
        # passes = 2;
        # brightness = 1;
        # contrast = 1.400;
        # ignore_opacity = true;
        # noise = 0;
        # new_optimizations = true;
        # xray = true;
      };
      drop_shadow = true;
      dim_special = 0.7;

      # shadows
      shadow_ignore_window = true;
      shadow_offset = "6 6";
      shadow_render_power = 4;
      shadow_range = 30;
      #"col.shadow" = "rgba(00000055)";
    };
  };
}
