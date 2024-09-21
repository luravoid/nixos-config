{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      # System
      "systemctl --user import-environment &"
      "hash dbus-update-activation-environment 2>/dev/null &"
      "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &"
      "poweralertd &"

      # Bar
      "waybar &"

      # Notifications
      "swaync &"

      # Power manager
      "hypridle &"

      # Systray applets
      "nm-applet &"
      "blueman-applet &"

      # Clipboard manager
      "wl-clip-persist --clipboard both"
      "wl-paste --watch cliphist store &"

      # Pyprland
      "pypr &"

      # Wallpaper
      "hyprpaper &"

      # Cursor
      "hyprctl setcursor Bibata-Modern-Ice 24 &"

      # Sprawn programs
      "[workspace 5 silent] obsidian"

      # Lock
      "hyprlock"

      # Polkit
      "lxqt-policykit-agent"

      # Scripts
      "windowstate &"
      "toggleurgent &"
      "groupbind-run &"
    ];
  };
}
