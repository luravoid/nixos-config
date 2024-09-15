{
  inputs,
  pkgs,
  ...
}: let
  hypreasymotion = pkgs.callPackage ../../../pkgs/hyprland-easymotion/default.nix {};
in {
  home.packages = with pkgs; [
    # swww
    #swaybg
    inputs.hypr-contrib.packages.${pkgs.system}.grimblast
    hyprpicker
    grim
    slurp
    # wl-clip-persist
    wf-recorder
    glib
    wayland
    direnv
    lxqt.lxqt-policykit
    swappy
  ];
  systemd.user.targets.hyprland-session.Unit.Wants = ["xdg-desktop-autostart.target"];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland = {
      enable = true;
      # hidpi = true;
    };
    # enableNvidiaPatches = false;
    systemd.enable = true;

    plugins = with pkgs; [hypreasymotion];

    settings =
      import ./config/autostart.nix
      // import ./config/rules.nix
      // import ./config/keybindings.nix
      // import ./config/general.nix
      // import ./config/input.nix
      // import ./config/animations.nix
      // import ./config/decoration.nix
      // import ./config/plugins.nix;

    extraConfig = "
      monitor=,preferred,auto,auto

      xwayland {
        force_zero_scaling = true
      }
    ";
  };
}
