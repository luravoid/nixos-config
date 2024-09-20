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
    wl-clip-persist
    wf-recorder
    glib
    wayland
    direnv
    lxqt.lxqt-policykit
    swappy
  ];

  imports = [
    ./config/autostart.nix
    ./config/input.nix
    ./config/general.nix
    ./config/decoration.nix
    ./config/animations.nix
    ./config/keybindings.nix
    ./config/rules.nix
    ./config/plugins.nix
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

    extraConfig = "
      monitor=,preferred,auto,auto

      xwayland {
        force_zero_scaling = true
      }
    ";
  };
}
