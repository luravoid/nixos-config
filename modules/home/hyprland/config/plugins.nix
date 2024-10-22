{pkgs, ...}: let
  hypreasymotion = pkgs.callPackage ../../../../pkgs/hyprland-easymotion/default.nix {};
in {
  wayland.windowManager.hyprland = {
    plugins = with pkgs; [hypreasymotion];
    settings.plugin = {
      easymotion = {
        textsize = 30;
        textcolor = "rgb(ebdbb2)";
        bgcolor = "rgba(40,40,40,1)";
        textfont = "Terminus";
        textpadding = "7,15,7,15";
        bordersize = 1;
        bordercolor = "rgb(ebdbb2)";
        rounding = 0;
        #motionkeys=abcdefghijklmnopqrstuvwxyz1234567890
        #motionkeys=fjghdkslaemuvitywoqpcbnxz1234567890
        #motionkeys=jkluiopyhnmfdsatgvcewqzx1234567890 # bez b i r
        motionkeys = "jkhluiopynmbfdsatgrvcewqzx1234567890";
      };
    };
  };
}
