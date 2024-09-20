{
  wayland.windowManager.hyprland.settings = {
    decoration = {
      rounding = 0;
      blur = {
        enabled = true;
        size = 10;
        passes = 6;
        noise = 0.3;
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
