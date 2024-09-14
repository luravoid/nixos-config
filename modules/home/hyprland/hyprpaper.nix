{ config, lib, pkgs, ... }:
{
  home.packages = (with pkgs; [ hyprpaper ]);
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        "~/Pictures/Backgrounds/wall1.jpg"
      ];
      wallpaper = [
        ",~/Pictures/Backgrounds/wall1.jpg"
      ];
    };
  };
}