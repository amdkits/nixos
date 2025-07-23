{ config, lib, pkgs, ... }:

{
  programs.ghostty = {
    enable = true;
  };
  {
  xdg.configFile."ghostty/config".text = ''
    color-palette = gruvbox-dark
  '';
}
}
