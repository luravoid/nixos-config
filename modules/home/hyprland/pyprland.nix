{pkgs, ...}: 
{
  home.packages = with pkgs; [
    pyprland
  ];
  home.file.".config/hypr/pyprland.toml".text = ''
    [pyprland]
    plugins = [
    "magnify",
    "shift_monitors",
    "workspaces_follow_focus",
    ]
  '';
}