{
  config,
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [hyprpaper];
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        "${../../../wallpapers/nixos/nixos_blue.png}"
      ];
      wallpaper = [
        ",${../../../wallpapers/nixos/nixos_blue.png}"
      ];
    };
  };
}
