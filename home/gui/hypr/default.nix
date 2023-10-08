{ config, lib, pkgs, ... }:

{
  imports = [ 
    #./hyprland-environment.nix
  ];

  home.packages = with pkgs; [ 
    waybar
    kitty
  ];
  
  #test later systemd.user.targets.hyprland-session.Unit.Wants = [ "xdg-desktop-autostart.target" ];
  wayland.windowManager.hyprland = {
    enable = true;
    nvidiaPatches = true;
  };
}
