{ pkgs, ... }: 
{
  programs.waybar = {
    enable = true;
  };
  programs.waybar.package = pkgs.waybar.overrideAttrs (oa: {
    mesonFlags = (oa.mesonFlags or [ ]) ++ [ "-Dexperimental=true" ];
  });

  xdg.configFile."waybar/scripts" = {
    source = ./scripts;
    recursive = true;
  };

  xdg.configFile."waybar/style.css".source = ./style.css;
  xdg.configFile."waybar/modules.json".source = ./modules.json;
}
