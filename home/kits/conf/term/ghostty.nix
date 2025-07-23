{ config, lib, pkgs, ... }:

{
  {
  xdg.configFile."ghostty/config".text = ''
    color-palette = gruvbox-dark
  '';
}
}
