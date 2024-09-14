{ host, ... }:
{
  programs.waybar.settings = {
    mainBar = {
      position = "top";
      layer = "top";
      height = 23;
      output = ["HDMI-A-1"];
      modules-left = [
        "hyprland/workspaces"
        "hyprland/mode"
        "hyprland/scratchpad"
        "hyprland/window"
      ];
      modules-center = [
        "custom/windowstate_0"
      ];
      modules-right = [
        "custom/spotify"
        "custom/colorpicker"
        "custom/todoist"
        "cpu"
        "memory"
        "temperature"
        "pulseaudio"
        "custom/notification"
        "clock"
        "tray"
      ];
      include = [
        "~/.config/waybar/modules.json"
      ];
    };

    topBar = {
      position = "top";
      layer = "top";
      height = 23;
      output = ["DVI-D-1"];
      modules-left = [
        "hyprland/workspaces"
        "hyprland/mode"
        "hyprland/scratchpad"
        "hyprland/window"
      ];
      modules-center = [
        "custom/windowstate_1"
      ];
      modules-right = [
        "custom/spotify"
        "custom/colorpicker"
        "custom/todoist"
        "cpu"
        "memory"
        "temperature"
        "pulseaudio"
        "clock"
        "tray"
      ];
      include = [
        "~/.config/waybar/modules.json"
      ];
    };
  };
}

