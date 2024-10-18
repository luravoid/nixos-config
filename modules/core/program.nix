{
  pkgs,
  lib,
  ...
}: {
  programs.dconf.enable = true;
  programs.zsh.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
    # pinentryFlavor = "";
  };
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = false;
  };
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [];
}
