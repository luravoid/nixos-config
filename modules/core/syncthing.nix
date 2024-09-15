{
  config,
  pkgs,
  ...
}: {
  services.syncthing = {
    enable = true;
    user = "scay";
    openDefaultPorts = true;
  };
}
