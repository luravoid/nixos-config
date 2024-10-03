{
  inputs,
  pkgs,
  ...
}: let
  hypreasymotion = pkgs.callPackage ../../../pkgs/hyprland-easymotion/default.nix {};
in {
  home.packages = with pkgs; [
    inputs.hypr-contrib.packages.${pkgs.system}.grimblast
    hyprpicker
    grim
    slurp
    wf-recorder
    glib
    wayland
    direnv
    lxqt.lxqt-policykit
    swappy
    #wl-clip-persist
  ];

  imports = [
    ./config/autostart.nix
    ./config/decorations.nix
    ./config/animations.nix
    ./config/keybindings.nix
    ./config/options.nix
    ./config/plugins.nix
    ./config/rules.nix
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
    systemd.variables = ["--all"];

    plugins = with pkgs; [hypreasymotion];

    extraConfig = "
      monitor=,preferred,auto,auto

      xwayland {
        force_zero_scaling = true
      }
    ";
  };
}
