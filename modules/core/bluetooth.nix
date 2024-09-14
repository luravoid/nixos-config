{ config, pkgs, ... }:
{
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true; # powers up the default Bluetooth controller on boot
  services.blueman.enable = true;

  environment.systemPackages = with pkgs; [
    # TODO - learn what to add here
    bluez-tools
  ];
}