{
  wayland.windowManager.hyprland.settings = {
    windowrulev2 = [
      "noblur,class:(Xdg-desktop-portal-gtk)"

      # Size
      "size 75% 80%,class:(Xdg-desktop-portal-gtk),title:(Open Files)"
      "size 75% 80%,class:(Xdg-desktop-portal-gtk),title:(All Files)"
      "size 50% 55%,class:(pulsemixer)"

      # Float
      "float,class:^(net.davidotek.pupgui2)$"
      "float,class:^(yad)$"
      "float,class:^(qt5ct)$"
      "float,class:^(nwg-look)$"
      "float,class:^(org.kde.ark)$"
      "float,class:^(pavucontrol)$"
      "float,class:^(blueman-manager)$"
      "float,class:^(nm-applet)$"
      "float,class:^(nm-connection-editor)$"
      "float,class:^(org.kde.polkit-kde-authentication-agent-1)$"
      "float,class:^(com.obsproject.Studio)$,title:^(Controls)$"
      "float,class:(Xdg-desktop-portal-gtk),title:(Open Files)"
      "float,class:(Xdg-desktop-portal-gtk),title:(All Files)"
      "float,class:(pulsemixer)"

      # Fullscreen
      "fullscreen,class:(mpv)"
      "fullscreen,class:(com.stremio.stremio)"

      # Tile
      "tile,class:(Brave-browser),title:(inoreader)"
      "tile,class:(Brave-browser),title:(chat.openai)"
      "tile,class:(Brave-browser),title:(gemini)"
      "tile,class:(Brave-browser),title:(copilot.microsoft.com)"
      "tile,class:(Microsoft-edge),title:(copilot.microsoft.com)"
      "tile,class:(Brave-browser),title:(todoist)"
      "tile,class:(Brave-browser),title:(monkeytype)"
      "tile,class:(scrcpy)"

      # Groups
      "group set,class:(Brave-browser),title:(chat.openai)"
      "group set,class:(Brave-browser),title:(gemini)"
      "group set,class:(Brave-browser),title:(copilot.microsoft.com)"
      "group set,class:(Microsoft-edge),title:(copilot.microsoft.com)"
      "group set,class:(dictionary)"
      "group set,class:(translate)"

      # Workspaces
      "workspace 2, class:(Brave-browser)"
      "workspace 3, class:(VSCodium)"
      "workspace 3, title:(VSCodium)"
      "workspace 3, class:(neovim)"
      "workspace 4, class:(thunar)"
      "workspace 4, class:(Thunar)"
      "workspace 4, class:(yazi)"
      "workspace 5, class:(obsidian)"
      "workspace 5, class:(scrcpy)"
      "workspace 6, title:(Zotero)"
      "workspace 6, title:(calibre-gui)"
      "workspace 7, class:(discord)"
      "workspace 7, class:(vesktop)"
      "workspace 8, class:(mpv)"
      "workspace 8, class:(com.stremio.stremio)"
      "workspace 8, class:(steam)"

      # Special workspaces
      "workspace special:music silent, class:(Spotify)"
      "workspace special:music silent, class:(spotify_tui)"
      "workspace special:mail, class:(thunderbird)"
      "workspace special:anki, class:(Anki)"
      "workspace special:anki, class:(anki)"
      "workspace special:rss silent,class:(Brave-browser),title:(inoreader)"
      "workspace special:ai silent,class:(Brave-browser),title:(chat.openai)"
      "workspace special:ai silent,class:(Brave-browser),title:(gemini)"
      "workspace special:ai silent,class:(Brave-browser),title:(copilot.microsoft.com)"
      "workspace special:ai silent,class:(Microsoft-edge),title:(copilot.microsoft.com)"
      "workspace special:tasks silent,class:(Brave-browser),title:(todoist)"
      "workspace special:type silent,class:(Brave-browser),title:(monkeytype)"
      "workspace special:dict silent,class:(dictionary)"
      "workspace special:dict silent,class:(translate)"
    ];

    # workspace
    workspace = [
      "1"
      "2"
      "3"
      "4"
      "5"
      "6"
      "7"
      "8"
      "9"
      "10"

      # Special workspaces
      "special:scratchpad,gapsin:7,gapsout:64"
      "special:obsidian,gapsin:7,gapsout:64,on-created-empty:obsidianspecial"
      "special:music,gapsin:7,gapsout:64,on-created-empty:spotify" # autostart-music
      "special:mail,gapsin:7,gapsout:64,on-created-empty:thunderbird"
      "special:rss,gapsin:7,gapsout:64,on-created-empty:brave --app=https://inoreader.com"
      "special:ai,on-created-empty:autostart-ai"
      "special:anki,gapsin:7,gapsout:64,on-created-empty:anki"
      "special:tasks,gapsin:7,gapsout:64,on-created-empty:brave --app=https://app.todoist.com"
      "special:dict,gapsin:7,gapsout:64,on-created-empty:autostart-dict"
      "special:type,gapsin:7,gapsout:64,on-created-empty:brave --app=https://monkeytype.com"
      "special:sound,on-created-empty:kitty --title pulsemixer --class pulsemixer -e pulsemixer"

      "s[false] f[1],gapsin:0,gapsout:0"
    ];

    # Layer rules. Alternative: blurls = launcher
    layerrule = [
      "blur, waybar"
      "blur, rofi"
      "blur, launcher"
      "dimaround, launcher"
      "noanim, launcher"
      "animation slide right, swaync-control-center"
    ];
  };
}
